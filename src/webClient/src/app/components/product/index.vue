

<template>
  <q-page :padding="!isOpenInDialog">
    <comp-breadcrumb class="text-capitalize" v-if="!isOpenInDialog" :list="[{label: $t('product.name_plural'), docType:'product'}]"/>
    <!-- фильтры   -->
    <div class="row q-mt-sm q-col-gutter-sm">
        <div class=" col-2 ">
          <q-select dense outlined v-model="filterCurrency" :options="optionsCurrency" label="" @update:model-value="v => updateFilterCurrency(v.value)"  class='q-mb-sm col-md-4 col-sm-6 col-xs-12'>
            <template v-slot:append v-if="filterCurrency">
              <q-icon name="close" @click.stop="updateFilterCurrency(null)" class="cursor-pointer" />
            </template>
          </q-select>
        </div>
        <div class=" col-md-2 col-sm-4 col-xs-6">
          <comp-fld-ref-search dense outlined pgMethod="product_type_list" label="" :item='filterProductTypeTitle' :itemId='filterProductTypeId' :ext='{isClearable: true}'  @update="updateFilterProductType" @clear="updateFilterProductType"  class='q-mb-sm col-md-4 col-sm-6 col-xs-12' />
        </div>
        <div class=" col-md-2 col-sm-4 col-xs-6">
          <comp-fld-ref-search dense outlined pgMethod="price_group_list" label="" :item='filterPriceGroupTitle' :itemId='filterPriceGroupId' :ext='{isClearable: true}'  @update="updateFilterPriceGroup" @clear="updateFilterPriceGroup"  class='q-mb-sm col-md-4 col-sm-6 col-xs-12' />
        </div>
        <div class=" col-md-2 col-sm-4 col-xs-6">
          <comp-fld-ref-search dense outlined pgMethod="color_list" label="" :item='filterColorTitle' :itemId='filterColorId' :ext='{isClearable: true}'  @update="updateFilterColor" @clear="updateFilterColor"  class='q-mb-sm col-md-4 col-sm-6 col-xs-12' />
        </div>
    </div>

    <comp-doc-list ref="docList" :listTitle="$t('product.name_plural')" :listDeletedTitle="$t('product.name_plural_deleted')" pg-method="product_list"
                   :list-sort-data="listSortData" :list-filter-data="listFilterData"
                   :newDocUrl="currentUrl + 'new'"
                   :ext="ext" 
                   search-fld-name="search_text" :readonly="false">


      <template #listItem="{item}">
        
		<router-link :to="currentUrl + item.id" style="cursor: pointer">
			<q-item-section avatar>
			  <q-avatar rounded>
				<img src="image/product.png" alt="">
			  </q-avatar>
			</q-item-section>
		</router-link>
	
        
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
			
        <q-item-section top side>
          <comp-item-dropdown-btn :item="item" itemProp="title" :is-edit="true" :is-delete="!(false || false)" fkProp=""
                                  pg-method="product_update"
                                  @edit="$router.push(`${currentUrl}${item.id}`)"
                                  @reload-list="$refs.docList.reloadList()"/>
        </q-item-section>
      </template>

    </comp-doc-list>
  </q-page>
</template>

<script>
  import currentUserMixin from '../../../app/mixins/currentUser'
  export default {
    props: ['isOpenInDialog', 'ext'],
    mixins: [currentUserMixin],
    computed: {
      currentUrl: () => '/product/',
    },
    data() {
      return {
        listSortData: [
          {value: 'created_at', title: 'Дата'},
          {value: 'title', title: 'Название'},
        ],
        listFilterData: [
          {value: {deleted: false}, title: 'Активные'},
          {value: {deleted: true}, title: 'Удаленные'}
        ],
        filterCurrency: null,
        optionsCurrency: [
        	{label: 'RUB', value: 'rub'},
					{label: 'EUR', value: 'eur'},
					{label: 'USD', value: 'usd'}
        ],
        filterProductTypeTitle: null,
        filterProductTypeId: null,
        filterPriceGroupTitle: null,
        filterPriceGroupId: null,
        filterColorTitle: null,
        filterColorId: null,
      }
    },
    methods: {
      updateFilterCurrency(v) {
        this.$refs.docList.changeItemList({'currency': v ? v : null})
        this.filterCurrency = v ? this.optionsCurrency.find(v1 => v1.value === v) : null
      },
      updateFilterProductType(v) {
        this.$refs.docList.changeItemList({'product_type_id': v ? v.id : null})
        if (v) {
          this.$utils.callPgMethod(`product_type_get_by_id`, {id: v.id}, (res) => {
            this.filterProductTypeTitle = res.title
          })
        }
      },
      updateFilterPriceGroup(v) {
        this.$refs.docList.changeItemList({'price_group_id': v ? v.id : null})
        if (v) {
          this.$utils.callPgMethod(`price_group_get_by_id`, {id: v.id}, (res) => {
            this.filterPriceGroupTitle = res.title
          })
        }
      },
      updateFilterColor(v) {
        this.$refs.docList.changeItemList({'color_id': v ? v.id : null})
        if (v) {
          this.$utils.callPgMethod(`color_get_by_id`, {id: v.id}, (res) => {
            this.filterColorTitle = res.title
          })
        }
      },
    },
    mounted() {
    // извлекаем параметры фильтрации из url
      const urlParams = new URLSearchParams(window.location.search)
      if (urlParams.has('currency')) {
        let name = urlParams.get('currency')
        if (name) this.updateFilterCurrency(name)
      }
      if (urlParams.has('product_type_id')) {
        let id = +urlParams.get('product_type_id')
        if (id) this.updateFilterProductType({id})
      }
      if (urlParams.has('price_group_id')) {
        let id = +urlParams.get('price_group_id')
        if (id) this.updateFilterPriceGroup({id})
      }
      if (urlParams.has('color_id')) {
        let id = +urlParams.get('color_id')
        if (id) this.updateFilterColor({id})
      }
    }
  }
</script>
