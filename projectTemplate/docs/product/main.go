package product

import (
	t "github.com/pepelazz/nla_framework/types"
	"github.com/pepelazz/nla_framework/utils"
)

const (
	name           = "product"
	name_ru        = "product"
	name_ru_plural = "products"
	// файл с иконкой сохранить в директорию projectTemplate/sourceFiles/src/webClient/public/image/legal_entity_icon.svg
	// скачать можно с ресурса https://www.flaticon.com/
	menu_icon       = "image/product.png"
	breadcrumb_icon = "far fa-file-alt"
)

func GetDoc(project *t.ProjectType) t.DocType {
	doc := t.DocType{
		Project:    project,
		Name:       name,
		NameRu:     name_ru,
		PathPrefix: "docs",
		Flds: []t.FldType{
			t.GetFldTitle().SetIsNotUniq().SetSqlSize(0),
			t.GetFldString("slug", "slug", 0, [][]int{{1, 2}}),
			t.GetFldString("description", "description", 0, [][]int{{2, 1}}, "col-8"),
			t.GetFldImgList("images", "images", [][]int{{3, 1}}, t.FldVueImgParams{Width: 400, Crop: "400x400"}, "col-8"),
			t.GetFldString("vendor_code", "vendor code", 0, [][]int{{4, 1}}, "col-2"),
			t.GetFldCheckbox("published", "published", [][]int{{4, 2}}, "col-2").SetDefault("false"),
			t.GetFldCheckbox("is_wholesale", "is wholesale", [][]int{{4, 3}}, "col-2").SetDefault("false"),
			t.GetFldCheckbox("is_complex", "is complex", [][]int{{4, 4}}, "col-2").SetDefault("false"),
			t.GetFldDouble("price", "price", [][]int{{5, 1}}, "col-2"),
			t.GetFldSelectString("currency", "currency", 20, [][]int{{5, 2}}, []t.FldVueOptionsItem{
				{Label: "RUB", Value: "rub"},
				{Label: "EUR", Value: "eur"},
				{Label: "USD", Value: "usd"}},
				"col-2",
			).SetDefault("'rub'").SetIsSearch(),
			t.GetFldRef("product_type_id", "product type", "product_type", [][]int{{5, 3}}, "col-4", "isShowLink", "isClearable"),
			t.GetFldRef("price_group_id", "price group", "price_group", [][]int{{6, 1}}, "col-4", "isShowLink", "isClearable"),
			t.GetFldRef("discount_group_id", "discount group", "discount_group", [][]int{{6, 2}}, "col-4", "isShowLink", "isClearable"),
			t.GetFldLinkListWidget("product_serie_link", [][]int{{7, 1}}, "col-4", nil),
			t.GetFldRef("color_id", "color", "color", [][]int{{7, 2}}, "col-4", "isShowLink", "isClearable"),
			t.GetFldJsonbCompositionWithoutFld([][]int{{8, 1}}, "col-4", "comp-discount-value"),
			t.GetFldString("old_id", "old_id", 100, [][]int{{9, 1}}).SetVif("false").SetIsUniq(),
		},
		Vue: t.DocVue{
			RouteName:      name,
			MenuIcon:       menu_icon,
			BreadcrumbIcon: breadcrumb_icon,
			Roles:          []string{},
			FilterList: []t.VueDocListFilter{
				{FldName: "currency", ColClass: "col-2"},
				{FldName: "product_type_id", IsRef: true, RefTable: "product_type"},
				{FldName: "price_group_id", IsRef: true, RefTable: "price_group"},
				{FldName: "color_id", IsRef: true, RefTable: "color"},
			},
		},
		Templates: map[string]*t.DocTemplate{
			"sql_function_get_by_id.sql":       {},
			"webClient_comp_discountValue.vue": {},
		},
		IsBaseTemplates: t.DocIsBaseTemplates{true, true},
		Sql: t.DocSql{
			IsSearchText:    true,
			IsBeforeTrigger: true,
			IsAfterTrigger:  true,
		},
	}
	// создаем стандартные методы sql "list", "update", "get_by_id" с возможностью ограничения по ролям
	doc.Sql.FillBaseMethods(doc.Name)

	doc.AddVueComposition("docItem", "discountValue")

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
						<q-badge color="info" v-if='item.price_group_id'>{{item.options.title.price_group_title}}</q-badge>
						<q-badge class='q-ml-sm' color="primary" v-if='item.product_type_id'>{{item.options.title.product_type_title}}</q-badge>
						<q-badge class='q-ml-sm' color="secondary" v-if='item.color_id'>{{item.options.title.color_title}}</q-badge>
					</q-item-label>
		         	<q-item-label caption>
						{{item.price}} {{$utils.i18n_product_currency(item.currency)}}
					</q-item-label>
			
			     </q-item-section>
			`
		},
	}

	doc.Init()

	doc.AddI18n("ru", "title", "label")

	return doc
}
