<template>
  <q-page padding>

    <comp-breadcrumb v-if="!isOpenInDialog" :list="[{label:'Product_serie_links', to:'/product_serie_link',  docType: 'product_serie_link'},  {label: item ? (item.title ? item.title : 'Редактирование') : '',  docType: 'edit'}]"/>

    <div v-if="item" class="q-mt-sm">
      <!--  поля формы    -->
      
      <div class="row q-col-gutter-md q-mb-sm">
      <div class="col-md-4 col-sm-6 col-xs-12">
          <comp-fld-ref-search outlined pgMethod="serie_list" :label="$t('product_serie_link.serie_id')" :item='item.serie_title' :itemId='item.serie_id' :ext='{}' @update="v=> item.serie_id = v.id" @clear="item.serie_id = null" :readonly='false'  class='q-mb-sm col-md-4 col-sm-6 col-xs-12' />
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

    import currentUserMixin from '../../../app/mixins/currentUser'
    export default {
        props: ['id', 'isOpenInDialog'],
        components: {},
        mixins: [currentUserMixin,],
        computed: {
            docUrl: function() {
              return '/product_serie_link'
            },
        },
        data() {
            return {
                item: null,
                flds: [
                        {name: 'product_id', label: 'product'},
                        {name: 'serie_id', label: 'serie'},
                ],
                optionsFlds: [],
                
            }
        },
        watch: {
          
        },
        methods: {
          
            resultModify(res) {
                
                return res
            },
            save() {
                
                this.$utils.saveItem.call(this, {
                    method: 'product_serie_link_update',
                    itemForSaveMod: {},
                    resultModify: this.resultModify,
                })
            },
          reload() {
            let cb = (v) => {
              this.item = this.resultModify(v)
            }
            this.$utils.getDocItemById.call(this, {method: 'product_serie_link_get_by_id', cb})
          }
        },
        mounted() {
           this.reload()
        }
    }
</script>
