<template>
  <q-page padding>

    <comp-breadcrumb v-if="!isOpenInDialog" :list="[{label:'Покупатели', to:'/customer',  docType: 'customer'},  {label: item ? (item.title ? item.title : 'Редактирование') : '',  docType: 'edit'}]"/>

    <div v-if="item" class="q-mt-sm">
      <!--  поля формы    -->
      
      <div class="row q-col-gutter-md q-mb-sm">
      <div class="col-md-4 col-sm-6 col-xs-12">
          <q-input outlined type='text' v-model="item.title" :label="$t('customer.title')" autogrow :readonly='false'  class='q-mb-sm col-md-4 col-sm-6 col-xs-12' />
      </div>
      </div>
      
      <div class="row q-col-gutter-md q-mb-sm">
      <div class="col-md-4 col-sm-6 col-xs-12">
          <q-input outlined mask="+# (###) ### - ####" v-model="item.phone" :label="$t('customer.phone')" :readonly='false'  class='q-mb-sm col-md-4 col-sm-6 col-xs-12' ><template v-slot:prepend><q-icon name="phone"/></template></q-input>
      </div>
      <div class="col-md-4 col-sm-6 col-xs-12">
          <q-input outlined type='email' v-model="item.email" :label="$t('customer.email')" :readonly='false'  class='q-mb-sm col-md-4 col-sm-6 col-xs-12' ><template v-slot:prepend><q-icon name="email"/></template></q-input>
      </div>
      </div>
      
      <div class="row q-col-gutter-md q-mb-sm">
      <div class="col-md-4 col-sm-6 col-xs-12">
          <q-input outlined type='text' v-model="item.password" :label="$t('customer.password')" autogrow :readonly='false'  class='q-mb-sm col-md-4 col-sm-6 col-xs-12' />
      </div>
      <div class="col-md-4 col-sm-6 col-xs-12">
          <comp-fld-ref-search outlined pgMethod="brand_list" :label="$t('customer.brand_id')" :item='item.brand_title' :itemId='item.brand_id' :ext='{"avatar":"image/brand.png","pathUrl":"/brand"}' @update="v=> item.brand_id = v.id" @clear="item.brand_id = null" :readonly='false'  class='q-mb-sm col-md-4 col-sm-6 col-xs-12' />
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
              return '/customer'
            },
        },
        data() {
            return {
                item: null,
                flds: [
                        {name: 'title', label: 'название',  required: true},
                        {name: 'phone', label: 'телефон',  required: true},
                        {name: 'email', label: 'email'},
                        {name: 'password', label: 'пароль'},
                        {name: 'brand_id', label: 'brand'},
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
                    method: 'customer_update',
                    itemForSaveMod: {},
                    resultModify: this.resultModify,
                })
            },
          reload() {
            let cb = (v) => {
              this.item = this.resultModify(v)
            }
            this.$utils.getDocItemById.call(this, {method: 'customer_get_by_id', cb})
          }
        },
        mounted() {
           this.reload()
        }
    }
</script>
