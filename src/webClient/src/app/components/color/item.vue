<template>
  <q-page padding>

    <comp-breadcrumb v-if="!isOpenInDialog" :list="[{label:'Colors', to:'/color',  docType: 'color'},  {label: item ? (item.title ? item.title : 'Редактирование') : '',  docType: 'edit'}]"/>

    <div v-if="item" class="q-mt-sm">
      <!--  поля формы    -->
      
      <div class="row q-col-gutter-md q-mb-sm">
      <div class="col-md-4 col-sm-6 col-xs-12">
          <q-input outlined type='text' v-model="item.title" :label="$t('color.title')" autogrow :readonly='false'  class='q-mb-sm col-md-4 col-sm-6 col-xs-12' />
      </div>
      </div>
      
      <div class="row q-col-gutter-md q-mb-sm">
      <div class="col-md-4 col-sm-6 col-xs-12" v-if="false">
          <q-input outlined type='text' v-model="item.old_id" :label="$t('color.old_id')" autogrow :readonly='false'  class='q-mb-sm col-md-4 col-sm-6 col-xs-12'  v-if="false" />
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
              return '/color'
            },
        },
        data() {
            return {
                item: null,
                flds: [
                        {name: 'title', label: 'название',  required: true},
                        {name: 'old_id', label: 'old_id'},
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
                    method: 'color_update',
                    itemForSaveMod: {},
                    resultModify: this.resultModify,
                })
            },
          reload() {
            let cb = (v) => {
              this.item = this.resultModify(v)
            }
            this.$utils.getDocItemById.call(this, {method: 'color_get_by_id', cb})
          }
        },
        mounted() {
           this.reload()
        }
    }
</script>
