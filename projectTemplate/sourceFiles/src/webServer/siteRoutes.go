package webServer

import (
	"github.com/gin-gonic/gin"
	"github.com/pepelazz/rozetki/src/pg"
	"github.com/sanity-io/litter"
	"net/http"
)

func siteRoutes(r *gin.Engine) {
	r.GET("/", func(c *gin.Context) {
		c.HTML(http.StatusOK, "main", gin.H{"title": "VIProzetki.ru", "description": "Интернет-магазин розетки и выключатели, датчики движения и присутствия, светодиодные светильники с датчиком движения"})
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

	r.GET("/products", func(c *gin.Context) {
		pageNumber := c.DefaultQuery("page", "1")

		var productList []map[string]interface{}

		err := pg.CallPgFuncWithStruct("product_list", map[string]string{"user_id": "1", "page": pageNumber, "per_page": "50"}, &productList)
		if err != nil {
			c.HTML(http.StatusBadRequest, "products", gin.H{"error": err.Error()})
			return
		}
		c.HTML(http.StatusOK, "products", gin.H{"title": "Продукты", "productList": productList})
	})

	r.GET("/products/:id", func(c *gin.Context) {
		id := c.Param("id")

		var product map[string]interface{}

		err := pg.CallPgFuncWithStruct("product_get_by_id", map[string]string{"user_id": "1", "id": id, "per_page": "50"}, &product)
		if err != nil {
			c.HTML(http.StatusBadRequest, "product", gin.H{"error": err.Error()})
			return
		}
		litter.Dump(product)
		c.HTML(http.StatusOK, "product", gin.H{"product": product})
	})
}
