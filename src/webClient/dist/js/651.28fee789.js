"use strict";(self["webpackChunkCompanyName"]=self["webpackChunkCompanyName"]||[]).push([[651],{41651:(t,e,l)=>{l.r(e),l.d(e,{default:()=>g});var a=l(34182);const i=(0,a.Wm)("img",{src:"image/legal_entity_icon.svg",alt:""},null,-1);function r(t,e,l,r,n,d){const o=(0,a.up)("comp-breadcrumb"),s=(0,a.up)("q-avatar"),u=(0,a.up)("q-item-section"),p=(0,a.up)("router-link"),m=(0,a.up)("q-item-label"),c=(0,a.up)("comp-item-dropdown-btn"),g=(0,a.up)("comp-doc-list"),_=(0,a.up)("q-page");return(0,a.wg)(),(0,a.j4)(_,{padding:!l.isOpenInDialog},{default:(0,a.w5)((()=>[l.isOpenInDialog?(0,a.kq)("",!0):((0,a.wg)(),(0,a.j4)(o,{key:0,list:[{label:"ЮрЛица",docType:"legal_entity"}]})),(0,a.Wm)(g,{ref:"docList",listTitle:"ЮрЛица",listDeletedTitle:"Удаленные юрЛица","pg-method":"legal_entity_list","list-sort-data":n.listSortData,"list-filter-data":n.listFilterData,newDocUrl:d.currentUrl+"new",ext:l.ext,"search-fld-name":"search_text",readonly:!1},{listItem:(0,a.w5)((({item:l})=>[(0,a.Wm)(p,{to:d.currentUrl+l.id,style:{cursor:"pointer"}},{default:(0,a.w5)((()=>[(0,a.Wm)(u,{avatar:""},{default:(0,a.w5)((()=>[(0,a.Wm)(s,{rounded:""},{default:(0,a.w5)((()=>[i])),_:1})])),_:1})])),_:2},1032,["to"]),(0,a.Wm)(u,null,{default:(0,a.w5)((()=>[(0,a.Wm)(m,{lines:"1"},{default:(0,a.w5)((()=>[(0,a.Uk)((0,a.zw)(l.title),1)])),_:2},1024)])),_:2},1024),(0,a.Wm)(u,{top:"",side:""},{default:(0,a.w5)((()=>[(0,a.Wm)(c,{item:l,itemProp:"title","is-edit":!0,"is-delete":!0,fkProp:"","pg-method":"legal_entity_update",onEdit:e=>t.$router.push(`${d.currentUrl}${l.id}`),onReloadList:e[1]||(e[1]=e=>t.$refs.docList.reloadList())},null,8,["item","is-delete","onEdit"])])),_:2},1024)])),_:1},8,["list-sort-data","list-filter-data","newDocUrl","ext"])])),_:1},8,["padding"])}var n=l(43015);const d={props:["isOpenInDialog","ext"],mixins:[n.Z],computed:{currentUrl:()=>"/legal_entity/"},data(){return{listSortData:[{value:"created_at",title:"Дата"},{value:"title",title:"Название"}],listFilterData:[{value:{deleted:!1},title:"Активные"},{value:{deleted:!0},title:"Удаленные"}]}}};var o=l(24379),s=l(52035),u=l(75096),p=l(2350),m=l(7518),c=l.n(m);d.render=r;const g=d;c()(d,"components",{QPage:o.Z,QItemSection:s.Z,QAvatar:u.Z,QItemLabel:p.Z})}}]);