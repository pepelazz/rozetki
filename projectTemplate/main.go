package main

import (
	"github.com/otiai10/copy"
	"github.com/pepelazz/nla_framework"
	t "github.com/pepelazz/nla_framework/types"
	"github.com/pepelazz/rozetki/projectTemplate/docs/brand"
	"github.com/pepelazz/rozetki/projectTemplate/docs/color"
	"github.com/pepelazz/rozetki/projectTemplate/docs/customer"
	"github.com/pepelazz/rozetki/projectTemplate/docs/discountGroup"
	"github.com/pepelazz/rozetki/projectTemplate/docs/priceGroup"
	"github.com/pepelazz/rozetki/projectTemplate/docs/product"
	"github.com/pepelazz/rozetki/projectTemplate/docs/productSerieLink"
	"github.com/pepelazz/rozetki/projectTemplate/docs/productType"
	"github.com/pepelazz/rozetki/projectTemplate/docs/serie"
	"github.com/pepelazz/rozetki/projectTemplate/utils"
	"os"
)

func main() {
	nla_framework.Start(getProject(), nil)
}

func getProject() t.ProjectType {
	p := &t.ProjectType{
		Name: "Rozetki",
	}
	p.Config.Vue.QuasarVersion = 2
	p.FillI18n()

	p.Docs = []t.DocType{
		priceGroup.GetDoc(p),
		discountGroup.GetDoc(p),
		productType.GetDoc(p),
		color.GetDoc(p),
		brand.GetDoc(p),
		serie.GetDoc(p),
		product.GetDoc(p),
		productSerieLink.GetDoc(p),
		customer.GetDoc(p),
	}
	// названием базы маленькими буквами, без пробелов
	p.Config.Postgres = t.PostrgesConfig{DbName: "rozetki", Port: 5657, Password: "xvzDV4curLidx8IWZJ6czDHQ1qa7wjfL", TimeZone: "Asia/Novosibirsk", Version: "13"}
	p.Config.WebServer = t.WebServerConfig{Port: 3101, Url: "https://example.ru", Path: "/home/deploy/projectName", Ip: "85.210.890.567", Username: "root"}
	p.Config.Email = t.EmailConfig{Sender: "e.letov@nl-a.ru", Password: "DctBltnGjGkfye21", Host: "smtp.mail.ru", Port: 465, SenderName: "Rozetki"}
	p.Config.Logo = "https://d29fhpw069ctt2.cloudfront.net/clipart/106632/preview/powersocket_preview_1715.png"
	p.Config.Docker.AfterCopy = []string{
		"COPY ./src/webServer/site /webServer/site",
		"COPY ./src/webServer/templates /webServer/templates",
	}
	// формируем routes для Vue
	p.FillVueBaseRoutes()
	p.Vue.UiAppName = "Rozetki"

	// боковое меню для Vue
	p.Vue.Menu = []t.VueMenu{
		//{DocName: "client_order"},
		{Url: "users", Text: "Пользователи", Icon: "image/users.svg", Roles: []string{utils.RoleAdmin}},
		{DocName: "product"},
		{DocName: "customer"},
		{Text: "Справочники", Icon: "image/directory.png", IsFolder: true, LinkList: []t.VueMenu{
			{DocName: "price_group"},
			{DocName: "discount_group"},
			{DocName: "product_type"},
			{DocName: "color"},
			{DocName: "brand"},
			{DocName: "serie"},
		}},
	}
	p.FillSideMenu()

	p.OverridePathForTemplates = map[string]string{
		"/webServer/main.go":        "./tmpl/webServer/main.go",
		"/webClient/quasar.conf.js": "./tmpl/webClient/quasar.conf.js",
	}

	// копируем файлы проекта (которые не шаблоны)
	if _, err := os.Stat("./sourceFiles"); !os.IsNotExist(err) {
		err := copy.Copy("./sourceFiles", "../")
		utils.CheckErr(err, "Copy sourceFiles")
	}

	return *p
}
