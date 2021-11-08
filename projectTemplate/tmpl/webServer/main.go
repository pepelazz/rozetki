package webServer

import (
	"github.com/gin-gonic/gin"
	"github.com/pepelazz/rozetki/src/sse"
	"github.com/pepelazz/rozetki/src/types"
	"github.com/pepelazz/rozetki/src/utils"
	"github.com/pepelazz/rozetki/src/webServer/auth"
	"html/template"
	"strings"
	"time"

	"fmt"
	"net/http"
)

func StartWebServer(config types.Config) {
	r := gin.New()

	// передаем конфиги для модуля авторизации
	auth.SetWebServerConfig(config.WebServer)

	// тут можно добавлять функции, которые потом использовать в html шаблонах
	r.FuncMap = template.FuncMap{
		"formatPgDate": func(d string) string {
			dt, err := time.Parse("2006-01-02T15:04:00", d)
			if err != nil {
				fmt.Printf("formatPgDate err %s\n", err)
				return d
			}
			return dt.Format("02/01/06")
		},
	}

	// загрузка html шаблонов
	r.LoadHTMLGlob("./webServer/templates/*/*.html")

	// вырубаем CORS
	r.Use(LiberalCORS)
	r.Static("/stat-img", "../image")
	r.Static("/site-static-img", "./webServer/site/image")
	r.Static("/static", "./webClient/dist")
	r.Static("/statics", "./webClient/dist/statics")
	r.Static("/site_css", "./webServer/site/css")
	r.StaticFile("/admin", "./webClient/dist/index.html")

	// роуты для сайта
	siteRoutes(r)

	// редирект для авторизации
	r.GET("/check_user_email", func(c *gin.Context) {
		c.Redirect(http.StatusTemporaryRedirect, fmt.Sprintf("/admin/check_user_email?t=%s", c.Query("t")))
	})
	r.GET("/email_auth_recover_password", func(c *gin.Context) {
		c.Redirect(http.StatusTemporaryRedirect, fmt.Sprintf("/admin/email_auth_recover_password?t=%s", c.Query("t")))
	})

	// АВТОРИЗАЦИЯ
	authRoute := r.Group("/auth")
	{
		// авторизация через email
		authRoute.POST("/email", auth.EmailAuth)
		authRoute.POST("/check_user_email", auth.EmailAuthCheckUserEmail)
		authRoute.POST("/email_auth_start_recover_password", auth.EmailAuthStartRecoverPassword)
		authRoute.POST("/email_auth_recover_password", auth.EmailAuthRecoverPassword)

	}

	apiRoute := r.Group("/api", authRequired)
	{
		apiRoute.POST("/current_user", apiCurrentUser)
		apiRoute.POST("/call_pg_func", apiCallPgFunc)
		// отправка логов в graylog
		apiRoute.POST("/log", logToGraylog)
		// подключение по SSE
		apiRoute.GET("/sse", sse.AddConn)
		// операции с файлами
		apiRoute.POST("/upload_file", uploadFile)
		apiRoute.GET("/file/:fileToken", downloadFile)
		apiRoute.POST("/remove_file/:fileToken", deleteFile)
		// загрузка фото
		apiRoute.POST("/upload_image", uploadImage)
		apiRoute.POST("/upload_profile_image", uploadProfileImage)

	}

	// на ненайденный url отправляем статический файл для запуска vuejs приложения
	r.NoRoute(func(c *gin.Context) {
		if strings.HasPrefix(c.Request.RequestURI, "/admin") {
			http.ServeFile(c.Writer, c.Request, "./webClient/dist/index.html")
		} else {
			c.HTML(http.StatusOK, "404", gin.H{})
		}
	})

	err := r.Run(fmt.Sprintf(":%v", config.WebServer.Port))
	utils.CheckErr(err, "webserver run")
}

func apiCurrentUser(c *gin.Context) {
	if u, ok := c.Get(utils.GinContextUser); ok {
		if user, ok := u.(*types.User); ok {
			utils.HttpSuccess(c, user)
		} else {
			utils.HttpError(c, http.StatusNonAuthoritativeInfo, "user problem cast to model.User")
		}
	} else {
		utils.HttpError(c, http.StatusNonAuthoritativeInfo, "user not found in gin.context")
	}
}
