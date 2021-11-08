<template>
  <q-page padding>

    <comp-breadcrumb v-if="!isOpenInDialog" :list="[{label:'Products', to:'/product',  docType: 'product'},  {label: item ? (item.title ? item.title : 'Редактирование') : '',  docType: 'edit'}]"/>

    <div v-if="item" class="q-mt-sm">
      <!--  поля формы    -->
      
      <div class="row q-col-gutter-md q-mb-sm">
      <div class="col-md-4 col-sm-6 col-xs-12">
          <q-input outlined type='text' v-model="item.title" :label="$t('product.title')" autogrow :readonly='false'  class='q-mb-sm col-md-4 col-sm-6 col-xs-12' />
      </div>
      <div class="col-md-4 col-sm-6 col-xs-12">
          <q-input outlined type='text' v-model="item.slug" :label="$t('product.slug')" autogrow :readonly='false'  class='q-mb-sm col-md-4 col-sm-6 col-xs-12' />
      </div>
      </div>
      
      <div class="row q-col-gutter-md q-mb-sm">
      <div class="col-md-8 col-sm-12 col-xs-12">
          <q-input outlined type='text' v-model="item.description" :label="$t('product.description')" autogrow :readonly='false'  class='q-mb-sm col-md-8 col-sm-12 col-xs-12' />
      </div>
      </div>
      
      <div class="row q-col-gutter-md q-mb-sm">
      <div class="col-md-8 col-sm-12 col-xs-12">
          <comp-fld-img-list v-if="this.id != 'new'" :label="$t('product.images')" :fld='item.images' :ext = '{tableName: "product", tableId: this.id, fldName: "images", crop: "400x400", width: "400"}' @update="v=> item.images = v" :readonly='false'  class='q-mb-sm col-md-8 col-sm-12 col-xs-12' />
      </div>
      </div>
      
      <div class="row q-col-gutter-md q-mb-sm">
      <div class="col-md-2 col-sm-3 col-xs-6">
          <q-input outlined type='text' v-model="item.vendor_code" :label="$t('product.vendor_code')" autogrow :readonly='false'  class='q-mb-sm col-md-2 col-sm-3 col-xs-6' />
      </div>
      <div class="col-md-2 col-sm-3 col-xs-6">
          <q-checkbox :label="$t('product.published')" v-model='item.published' :disable='false' :false-value='false' indeterminate-value='some'  class='q-mb-sm col-md-2 col-sm-3 col-xs-6' />
      </div>
      <div class="col-md-2 col-sm-3 col-xs-6">
          <q-checkbox :label="$t('product.is_wholesale')" v-model='item.is_wholesale' :disable='false' :false-value='false' indeterminate-value='some'  class='q-mb-sm col-md-2 col-sm-3 col-xs-6' />
      </div>
      <div class="col-md-2 col-sm-3 col-xs-6">
          <q-checkbox :label="$t('product.is_complex')" v-model='item.is_complex' :disable='false' :false-value='false' indeterminate-value='some'  class='q-mb-sm col-md-2 col-sm-3 col-xs-6' />
      </div>
      </div>
      
      <div class="row q-col-gutter-md q-mb-sm">
      <div class="col-md-2 col-sm-3 col-xs-6">
          <q-input outlined type='number' v-model="item.price" :label="$t('product.price')" :readonly='false'  class='q-mb-sm col-md-2 col-sm-3 col-xs-6' />
      </div>
      <div class="col-md-2 col-sm-3 col-xs-6">
          <q-select outlined :label="$t('product.currency')" v-model='item.currency' :options='[{"label":"RUB","value":"rub","color":""},{"label":"EUR","value":"eur","color":""},{"label":"USD","value":"usd","color":""}]'   :readonly='false'  class='q-mb-sm col-md-2 col-sm-3 col-xs-6' />
      </div>
      <div class="col-md-4 col-sm-6 col-xs-12">
          <comp-fld-ref-search outlined pgMethod="product_type_list" :label="$t('product.product_type_id')" :item='item.product_type_title' :itemId='item.product_type_id' :ext='{"avatar":"image/product_type.png","isClearable":"true","pathUrl":"/product_type"}' @update="v=> item.product_type_id = v.id" @clear="item.product_type_id = null" :readonly='false'  class='q-mb-sm col-md-4 col-sm-6 col-xs-12' />
      </div>
      </div>
      
      <div class="row q-col-gutter-md q-mb-sm">
      <div class="col-md-4 col-sm-6 col-xs-12">
          <comp-fld-ref-search outlined pgMethod="price_group_list" :label="$t('product.price_group_id')" :item='item.price_group_title' :itemId='item.price_group_id' :ext='{"avatar":"image/price_group.png","isClearable":"true","pathUrl":"/price_group"}' @update="v=> item.price_group_id = v.id" @clear="item.price_group_id = null" :readonly='false'  class='q-mb-sm col-md-4 col-sm-6 col-xs-12' />
      </div>
      <div class="col-md-4 col-sm-6 col-xs-12">
          <comp-fld-ref-search outlined pgMethod="discount_group_list" :label="$t('product.discount_group_id')" :item='item.discount_group_title' :itemId='item.discount_group_id' :ext='{"avatar":"image/discount_group.png","isClearable":"true","pathUrl":"/discount_group"}' @update="v=> item.discount_group_id = v.id" @clear="item.discount_group_id = null" :readonly='false'  class='q-mb-sm col-md-4 col-sm-6 col-xs-12' />
      </div>
      </div>
      
      <div class="row q-col-gutter-md q-mb-sm">
      <div class="col-md-4 col-sm-6 col-xs-12">
          <comp-link-list-widget label='Series' :id='id' tableIdName='product' tableIdFldName='product_id' tableDependName='serie' tableDependFldName='serie_id' tableDependRoute='/serie' linkTableName='product_serie_link' avatarSrc='image/serie.png' :hideCreateNew='false' :readonly='false'    ></comp-link-list-widget>
      </div>
      <div class="col-md-4 col-sm-6 col-xs-12">
          <comp-fld-ref-search outlined pgMethod="color_list" :label="$t('product.color_id')" :item='item.color_title' :itemId='item.color_id' :ext='{"avatar":"image/color.png","isClearable":"true","pathUrl":"/color"}' @update="v=> item.color_id = v.id" @clear="item.color_id = null" :readonly='false'  class='q-mb-sm col-md-4 col-sm-6 col-xs-12' />
      </div>
      </div>
      
      <div class="row q-col-gutter-md q-mb-sm">
      <div class="col-md-4 col-sm-6 col-xs-12">
          <comp-discount-value :item='item' />
      </div>
      </div>
      
      <div class="row q-col-gutter-md q-mb-sm">
      <div class="col-md-4 col-sm-6 col-xs-12" v-if="false">
          <q-input outlined type='text' v-model="item.old_id" :label="$t('product.old_id')" autogrow :readonly='false'  class='q-mb-sm col-md-4 col-sm-6 col-xs-12'  v-if="false" />
      </div>
      </div>
      

      <!--  кнопки   -->
      <comp-item-btn-save v-if="!isOpenInDialog" @save="save" :readonly="false" @cancel="$router.push(docUrl)"/>
      <!--  при открытии в диалоге кнопку Отмена не показываем   -->
      <q-btn v-else color="secondary" :label="$t('message.save')" class="q-mr-sm" @click="save"/>

        

    </div>
  </q-page>
</template>

<script>
	import compDiscountValue from './comp/discountValue.vue'
    import currentUserMixin from '../../../app/mixins/currentUser'
    export default {
        props: ['id', 'isOpenInDialog'],
        components: {compDiscountValue},
        mixins: [currentUserMixin,],
        computed: {
            docUrl: function() {
              return '/product'
            },
        },
        data() {
            return {
                item: null,
                flds: [
                        {name: 'title', label: 'название',  required: true},
                        {name: 'slug', label: 'slug'},
                        {name: 'description', label: 'description'},
                        {name: 'images', label: 'images'},
                        {name: 'vendor_code', label: 'vendor code'},
                        {name: 'published', label: 'published'},
                        {name: 'is_wholesale', label: 'is wholesale'},
                        {name: 'is_complex', label: 'is complex'},
                        {name: 'price', label: 'price'},
                        {name: 'currency', label: 'currency'},
                        {name: 'product_type_id', label: 'product type'},
                        {name: 'price_group_id', label: 'price group'},
                        {name: 'discount_group_id', label: 'discount group'},
                        {name: 'color_id', label: 'color'},
                        {name: 'old_id', label: 'old_id'},
                ],
                optionsFlds: [],
                
            }
        },
        watch: {
          
        },
        methods: {
          
            resultModify(res) {
                
				if (res.currency) {
                    let arr = [{"label":"RUB","value":"rub","color":""},{"label":"EUR","value":"eur","color":""},{"label":"USD","value":"usd","color":""}]
                    let currency_item = arr.find(v => v.value === res.currency)
                    if (currency_item) res.currency = {value: res.currency, label: currency_item.label}
                    }
			
                return res
            },
            save() {
                
                this.$utils.saveItem.call(this, {
                    method: 'product_update',
                    itemForSaveMod: {currency: this.item.currency ? this.item.currency.value : null,
},
                    resultModify: this.resultModify,
                })
            },
          reload() {
            let cb = (v) => {
              this.item = this.resultModify(v)
            }
            this.$utils.getDocItemById.call(this, {method: 'product_get_by_id', cb})
          }
        },
        mounted() {
           this.reload()
        }
    }
</script>
