

<template>
  <q-page :padding="!isOpenInDialog">
    <comp-breadcrumb class="text-capitalize" v-if="!isOpenInDialog" :list="[{label: $t('serie.name_plural'), docType:'serie'}]"/>
    <!-- фильтры   -->
    <div class="row q-mt-sm q-col-gutter-sm">
        <div class=" col-md-2 col-sm-4 col-xs-6">
          <comp-fld-ref-search dense outlined pgMethod="brand_list" label="" :item='filterBrandTitle' :itemId='filterBrandId' :ext='{isClearable: true}'  @update="updateFilterBrand" @clear="updateFilterBrand"  class='q-mb-sm col-md-4 col-sm-6 col-xs-12' />
        </div>
    </div>

    <comp-doc-list ref="docList" :listTitle="$t('serie.name_plural')" :listDeletedTitle="$t('serie.name_plural_deleted')" pg-method="serie_list"
                   :list-sort-data="listSortData" :list-filter-data="listFilterData"
                   :newDocUrl="currentUrl + 'new'"
                   :ext="ext" 
                   search-fld-name="search_text" :readonly="false">


      <template #listItem="{item}">
        
		<router-link :to="currentUrl + item.id" style="cursor: pointer">
			<q-item-section avatar>
			  <q-avatar rounded>
				<img src="image/serie.png" alt="">
			  </q-avatar>
			</q-item-section>
		</router-link>
	
        
			     <q-item-section>
			       <q-item-label>{{item.title}}</q-item-label>
		         	<q-item-label caption>
						<q-badge color="primary" outline v-if='item.brand_id'>{{item.options.title.brand_title}}</q-badge>
					</q-item-label>
			
			     </q-item-section>
			
        <q-item-section top side>
          <comp-item-dropdown-btn :item="item" itemProp="title" :is-edit="true" :is-delete="!(false || false)" fkProp=""
                                  pg-method="serie_update"
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
      currentUrl: () => '/serie/',
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
        filterBrandTitle: null,
        filterBrandId: null,
      }
    },
    methods: {
      updateFilterBrand(v) {
        this.$refs.docList.changeItemList({'brand_id': v ? v.id : null})
        if (v) {
          this.$utils.callPgMethod(`brand_get_by_id`, {id: v.id}, (res) => {
            this.filterBrandTitle = res.title
          })
        }
      },
    },
    mounted() {
    // извлекаем параметры фильтрации из url
      const urlParams = new URLSearchParams(window.location.search)
      if (urlParams.has('brand_id')) {
        let id = +urlParams.get('brand_id')
        if (id) this.updateFilterBrand({id})
      }
    }
  }
</script>
