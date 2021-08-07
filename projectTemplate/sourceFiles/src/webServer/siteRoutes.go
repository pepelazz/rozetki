package webServer

import (
	"github.com/gin-gonic/gin"
	"github.com/pepelazz/projectBlueprintSite/src/pg"
	"net/http"
)

func siteRoutes(r *gin.Engine) {
	r.GET("/", func(c *gin.Context) {
		c.HTML(http.StatusOK, "main", gin.H{"title": "NL!A", "description": "Цифровые сервисы для бизнеса"})
	})

	r.GET("/users", func(c *gin.Context) {
		var users []struct {
			Id       int64    `json:"id"`
			Fullname string   `json:"fullname"`
			Role     []string `json:"role"`
		}
		err := pg.CallPgFuncWithStruct("user_list", "{}", &users)
		if err != nil {
			c.HTML(http.StatusBadRequest, "users", gin.H{"error": err.Error()})
			return
		}
		c.HTML(http.StatusOK, "users", gin.H{"title": "Пользователи", "users": users})
	})
}
