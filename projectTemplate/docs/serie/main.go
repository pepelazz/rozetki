package serie

import (
	t "github.com/pepelazz/nla_framework/types"
	"github.com/pepelazz/nla_framework/utils"
)

const (
	name           = "serie"
	name_ru        = "serie"
	name_ru_plural = "series"
	// файл с иконкой сохранить в директорию projectTemplate/sourceFiles/src/webClient/public/image/legal_entity_icon.svg
	// скачать можно с ресурса https://www.flaticon.com/
	menu_icon       = "image/serie.png"
	breadcrumb_icon = "far fa-file-alt"
)

func GetDoc(project *t.ProjectType) t.DocType {
	doc := t.DocType{
		Project:    project,
		Name:       name,
		NameRu:     name_ru,
		PathPrefix: "docs",
		Flds: []t.FldType{
			t.GetFldTitle().SetSqlSize(0),
			t.GetFldRef("brand_id", "brand", "brand", [][]int{{1, 2}}, "col-4", "isShowLink", "isClearable"),
			t.GetFldString("slug", "slug", 0, [][]int{{2, 1}}),
			t.GetFldCheckbox("published", "published", [][]int{{2, 2}}, "col-2").SetDefault("false"),
			t.GetFldString("description", "description", 0, [][]int{{3, 1}}, "col-8"),
			t.GetFldLinkListWidget("product_serie_link", [][]int{{4, 1}}, "col-8", nil),
			t.GetFldString("old_id", "old_id", 100, [][]int{{5, 1}}).SetVif("false").SetIsUniq(),
		},
		Vue: t.DocVue{
			RouteName:      name,
			MenuIcon:       menu_icon,
			BreadcrumbIcon: breadcrumb_icon,
			Roles:          []string{},
			FilterList: []t.VueDocListFilter{
				{FldName: "brand_id", IsRef: true, RefTable: "brand"},
			},
		},
		//Templates:   map[string]*t.DocTemplate{"webClient_item.vue": {},},
		IsBaseTemplates: t.DocIsBaseTemplates{true, true},
		Sql: t.DocSql{
			IsSearchText:    true,
			IsBeforeTrigger: true,
			IsAfterTrigger:  true,
		},
	}
	// создаем стандартные методы sql "list", "update", "get_by_id" с возможностью ограничения по ролям
	doc.Sql.FillBaseMethods(doc.Name)
	doc.Vue.AddFixedSaveBtn()

	doc.Vue.I18n = map[string]string{
		"listTitle":        utils.UpperCaseFirst(name_ru_plural),
		"listDeletedTitle": "Удаленные " + name_ru_plural,
	}

	doc.Vue.TmplFuncs = map[string]func(t.DocType) string{
		// шаблон названия в списке
		"PrintListRowLabel": func(docType t.DocType) string {
			return `
			     <q-item-section>
			       <q-item-label>{{item.title}}</q-item-label>
		         	<q-item-label caption>
						<q-badge color="primary" outline v-if='item.brand_id'>{{item.options.title.brand_title}}</q-badge>
					</q-item-label>
			
			     </q-item-section>
			`
		},
	}

	doc.Init()

	doc.AddI18n("ru", "title", "label")

	return doc
}
