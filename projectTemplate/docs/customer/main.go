package customer

import (
	t "github.com/pepelazz/nla_framework/types"
	"github.com/pepelazz/nla_framework/utils"
)

const (
	name           = "customer"
	name_ru        = "покупатель"
	name_ru_plural = "покупатели"
	// файл с иконкой сохранить в директорию projectTemplate/sourceFiles/src/webClient/public/image/legal_entity_icon.svg
	// скачать можно с ресурса https://www.flaticon.com/
	menu_icon       = "image/customer.png"
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
			t.GetFldPhone("phone", "телефон", [][]int{{2, 1}}).SetIsRequired().SetIsSearch(),
			t.GetFldEmail("email", "email", [][]int{{2, 2}}),
			t.GetFldString("password", "пароль", 50, [][]int{{3, 1}}),
			t.GetFldRef("brand_id", "brand", "brand", [][]int{{3, 2}}, "col-4", "isShowLink"),
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
		},
	}
	// создаем стандартные методы sql "list", "update", "get_by_id" с возможностью ограничения по ролям
	doc.Sql.FillBaseMethods(doc.Name)

	doc.Vue.I18n = map[string]string{
		"listTitle":        utils.UpperCaseFirst(name_ru_plural),
		"listDeletedTitle": "Удаленные " + name_ru_plural,
	}

	doc.Vue.TmplFuncs = map[string]func(t.DocType) string{
		// шаблон названия в списке
		"PrintListRowLabel": func(docType t.DocType) string {
			return `
			     <q-item-section>
			       <q-item-label >{{item.title}}</q-item-label>
					<q-item-label caption><q-icon name='phone'/>{{item.phone}}</q-item-label>
			     </q-item-section>
			`
		},
	}

	doc.Init()

	doc.AddI18n("ru", "title", "label")

	return doc
}
