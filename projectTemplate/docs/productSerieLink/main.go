package productSerieLink

import (
	t "github.com/pepelazz/nla_framework/types"
	"github.com/pepelazz/nla_framework/utils"
)

const (
	name           = "product_serie_link"
	name_ru        = "product_serie_link"
	name_ru_plural = "product_serie_links"
	// файл с иконкой сохранить в директорию projectTemplate/sourceFiles/src/webClient/public/image/legal_entity_icon.svg
	// скачать можно с ресурса https://www.flaticon.com/
	menu_icon       = "image/brand.png"
	breadcrumb_icon = "far fa-file-alt"
)

func GetDoc(project *t.ProjectType) t.DocType {
	doc := t.DocType{
		Project:    project,
		Name:       name,
		NameRu:     name_ru,
		PathPrefix: "docs",
		Flds: []t.FldType{
			t.GetFldRef("product_id", "product", "product", [][]int{{1, 1}}),
			t.GetFldRef("serie_id", "serie", "serie", [][]int{{1, 1}}),
		},
		Vue: t.DocVue{
			RouteName:      name,
			MenuIcon:       menu_icon,
			BreadcrumbIcon: breadcrumb_icon,
			Roles:          []string{},
		},
		//Templates:   map[string]*t.DocTemplate{"webClient_item.vue": {},},
		IsBaseTemplates: t.DocIsBaseTemplates{true, true},
		Sql: t.DocSql{
			IsSearchText:    true,
			IsBeforeTrigger: true,
			IsAfterTrigger:  true,
			IsUniqLink:      true,
		},
	}
	// создаем стандартные методы sql "list", "update", "get_by_id" с возможностью ограничения по ролям
	doc.Sql.FillBaseMethods(doc.Name)

	doc.Vue.I18n = map[string]string{
		"listTitle":        utils.UpperCaseFirst(name_ru_plural),
		"listDeletedTitle": "Удаленные " + name_ru_plural,
	}

	doc.Init()

	doc.AddI18n("ru", "title", "label")

	return doc
}
