webpackJsonp([49],{pAiq:function(t,e){},yQu4:function(t,e,o){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var i=o("mvHQ"),s=o.n(i),a=o("Cz8s"),n=o("+TmT"),l=o("deIj"),r={data:function(){return{timePickerShow:!1,type:"title",from:"waimai",store:{title:"",logo:"",content:"",business_hours:[],telephone:"",address:"",thumbs:[],category_arr:[],notice:"",tips:"",haodian_tags:[]},categorys:[],businessHoursSelected:{index:0,type:"s"},logo:[],thumbs:[],columns:[{values:[],defaultIndex:0},{values:[],defaultIndex:0}],popup:{haodian_category:!1},tag:"",islegal:!1,showPreLoading:!0}},components:{publicHeader:a.a,uploader:n.a},methods:{onToggleTimePicker:function(t,e){this.timePickerShow=!this.timePickerShow,t>-1&&("s"==e||"e"==e)&&(this.businessHoursSelected.index=t,this.businessHoursSelected.type=e)},onConfirmTime:function(t){if(t){var e=this.businessHoursSelected.index,o=this.businessHoursSelected.type;this.store.business_hours[e][o]=t,this.onToggleTimePicker()}},onAddTime:function(){return"business_hours"==this.type&&(this.store.business_hours.length>=3?(this.util.$toast("最多可添加三个营业时间段"),!1):void this.store.business_hours.push({s:"08:00",e:"21:00"}))},onRemoveTime:function(t){if("business_hours"!=this.type)return!1;this.store.business_hours.splice(t,1)},onToggleCategory:function(t,e){this.$refs.checkboxes[e].toggle()},onChangeLogo:function(t){var e="";t&&1==t.length&&t[0].filename&&(e=t[0].filename),this.store.logo=e},onChangeThumbs:function(t){var e=[];if(t&&t.length>0)for(var o in t)e.push({image:t[o].url,url:""});this.store.thumbs=e},onTogglePopup:function(t){this.popup[t]=!this.popup[t]},onConfirmHaodianCategory:function(t){t[1]?(this.store.haodian_cid=t[1].parentid,this.store.haodian_child_id=t[1].id,this.store.haodian_category_cn=t[0].title+"-"+t[1].title):(this.store.haodian_cid=t[0].id,this.store.haodian_child_id=0,this.store.haodian_category_cn=t[0].title),this.onTogglePopup("haodian_category")},onChangeHaodianCategory:function(t,e){e[0].child&&e[0].child.length>0?t.setColumnValues(1,e[0].child):t.setColumnValues(1,[])},onDeleteTag:function(t){this.store.haodian_tags.splice(t,1)},onAddTag:function(){4==this.store.haodian_tags.length?(this.util.$toast("好店标签最多只能添加四个"),this.tag=""):this.tag?(this.store.haodian_tags.push(this.tag),this.tag=""):this.util.$toast("请输入有效的好店标签")},onLoad:function(){var t=this;Object(l.a)({url:"manage/shop/index/info",vue:t,autoAssign:!0,variable:"store",data:{id:t.id,type:t.type},success:function(e){if(t.islegal=!0,"logo"==t.type)t.store.logo&&t.logo.push({url:t.store.logo});else if("thumbs"==t.type){if(t.store.thumbs&&t.store.thumbs.length>0)for(var o in t.store.thumbs)t.thumbs.push({url:t.store.thumbs[o].image})}else if("haodian_category"==t.type&&e.haodian_category){var i=e.haodian_category;t.columns[0].values=i,t.columns[0].values[0].child&&(t.columns[1].values=i[0].child)}}})},onSubmit:function(){var t=this;if(!t.islegal)return!1;t.islegal=!1;var e="";e="haodian_category"==t.type?{haodian_cid:t.store.haodian_cid,haodian_child_id:t.store.haodian_child_id}:t.store[t.type];var o="pages/shop/basic?from="+t.from;"notice"!=t.type&&"tips"!=t.type||(o="pages/shop/index"),Object(l.c)({url:"manage/shop/index/setting",vue:t,data:{type:t.type,value:s()(e)},redirect:t.util.getUrl({path:o}),fail:function(e){t.util.$toast(e),t.islegal=!0}})}},created:function(){if(this.$route.query&&(this.$route.query.type&&(this.type=this.$route.query.type),this.$route.query.from)){var t=this.$route.query.from;-1!=["waimai","haodian"].indexOf(t)&&(this.from=t)}},mounted:function(){this.onLoad()}},c={render:function(){var t=this,e=t.$createElement,o=t._self._c||e;return o("div",{attrs:{id:"store-update"}},[o("public-header",{attrs:{title:"基本信息设置"}}),t._v(" "),o("div",{staticClass:"content"},["title"==t.type?o("van-cell-group",[o("van-field",{attrs:{label:"门店名称",placeholder:"请输入门店名称","input-align":"right"},model:{value:t.store.title,callback:function(e){t.$set(t.store,"title",e)},expression:"store.title"}})],1):"telephone"==t.type?o("van-cell-group",[o("van-field",{attrs:{label:"联系电话",placeholder:"请输入门店联系电话","input-align":"right"},model:{value:t.store.telephone,callback:function(e){t.$set(t.store,"telephone",e)},expression:"store.telephone"}})],1):"address"==t.type?o("van-cell-group",[o("van-field",{attrs:{label:"门店地址",placeholder:"请输入门店地址","input-align":"right"},model:{value:t.store.address,callback:function(e){t.$set(t.store,"address",e)},expression:"store.address"}})],1):"content"==t.type?[o("div",{staticClass:"font-14 padding-15-lr padding-10-tb c-gray"},[t._v("门店描述")]),t._v(" "),o("van-cell-group",[o("van-field",{attrs:{type:"textarea",rows:"3",autosize:"",placeholder:"请输入门店描述"},model:{value:t.store.content,callback:function(e){t.$set(t.store,"content",e)},expression:"store.content"}})],1)]:"notice"==t.type?[o("div",{staticClass:"font-14 padding-15-lr padding-10-tb c-gray"},[t._v("商户公告")]),t._v(" "),o("van-cell-group",[o("van-field",{attrs:{type:"textarea",rows:"3",autosize:"",placeholder:"请输入商户公告"},model:{value:t.store.notice,callback:function(e){t.$set(t.store,"notice",e)},expression:"store.notice"}})],1)]:"tips"==t.type?[o("div",{staticClass:"font-14 padding-15-lr padding-10-tb c-gray"},[t._v("商品列表页提示")]),t._v(" "),o("van-cell-group",[o("van-field",{attrs:{type:"textarea",rows:"3",autosize:"",placeholder:"用户进入页面后, 将弹框提示设置的内容"},model:{value:t.store.tips,callback:function(e){t.$set(t.store,"tips",e)},expression:"store.tips"}})],1)]:"business_hours"==t.type?[o("div",{staticClass:"font-14 padding-15-lr padding-10-tb c-gray"},[t._v("营业时间")]),t._v(" "),o("van-cell-group",t._l(t.store.business_hours,function(e,i){return o("van-cell",{key:i},[o("div",{attrs:{slot:"title"},slot:"title"},[o("span",{on:{click:function(e){t.onToggleTimePicker(i,"s")}}},[t._v(t._s(e.s))]),t._v(" "),o("span",{staticClass:"padding-10-lr"},[t._v("至")]),t._v(" "),o("span",{on:{click:function(e){t.onToggleTimePicker(i,"e")}}},[t._v(t._s(e.e))])]),t._v(" "),o("div",{staticClass:"c-info",attrs:{slot:"right-icon"},on:{click:function(e){t.onRemoveTime(i)}},slot:"right-icon"},[t._v("移除")])])})),t._v(" "),o("van-cell-group",{class:{"margin-10-t":t.store.business_hours.length>0}},[o("van-cell",[o("div",{staticClass:"c-info",attrs:{slot:"title"},on:{click:t.onAddTime},slot:"title"},[o("i",{staticClass:"icon icon-roundadd font-16"}),t._v("添加时间段\n\t\t\t\t\t")])])],1),t._v(" "),o("van-popup",{attrs:{position:"bottom"},model:{value:t.timePickerShow,callback:function(e){t.timePickerShow=e},expression:"timePickerShow"}},[o("van-datetime-picker",{attrs:{type:"time"},on:{confirm:t.onConfirmTime,cancel:t.onToggleTimePicker}})],1)]:"logo"==t.type?[o("div",{staticClass:"font-14 padding-15-lr padding-10-tb c-gray"},[t._v("门店Logo")]),t._v(" "),o("uploader",{attrs:{max:"1",value:t.logo},on:{onGetUrl:t.onChangeLogo,delete:t.onChangeLogo}})]:"thumbs"==t.type?[o("div",{staticClass:"font-14 padding-15-lr padding-10-tb c-gray"},[t._v("门店实景")]),t._v(" "),o("uploader",{attrs:{max:"7",value:t.thumbs},on:{onGetUrl:t.onChangeThumbs,delete:t.onChangeThumbs}})]:"haodian_category"==t.type?[o("van-cell",{staticClass:"margin-10-t",attrs:{title:"好店分类"}},[o("div",{staticClass:"flex",attrs:{slot:"right-icon"},on:{click:function(e){t.onTogglePopup("haodian_category")}},slot:"right-icon"},[o("span",[t._v(t._s(t.store.haodian_cid>0?t.store.haodian_category_cn:"未设置"))]),t._v(" "),o("van-icon",{attrs:{name:"arrow"}})],1)]),t._v(" "),o("van-popup",{attrs:{position:"bottom"},model:{value:t.popup.haodian_category,callback:function(e){t.$set(t.popup,"haodian_category",e)},expression:"popup.haodian_category"}},[o("van-picker",{attrs:{"show-toolbar":"",title:"好店分类",columns:t.columns,"value-key":"title"},on:{cancel:function(e){t.onTogglePopup("haodian_category")},confirm:t.onConfirmHaodianCategory,change:t.onChangeHaodianCategory}})],1)]:"haodian_tags"==t.type?[o("div",{staticClass:"tags-list"},[o("div",{staticClass:"font-14 margin-10-r"},[t._v("好店标签")]),t._v(" "),t.store.haodian_tags&&t.store.haodian_tags.length>0?o("div",{staticClass:"flex"},t._l(t.store.haodian_tags,function(e,i){return o("div",{key:i,staticClass:"tag-group"},[o("van-tag",{staticClass:"bg-info",attrs:{plain:""}},[t._v(t._s(e))]),t._v(" "),o("i",{staticClass:"icon icon-close",on:{click:function(e){t.onDeleteTag(i)}}})],1)})):o("div",{staticClass:"c-gray no-tags"},[t._v("\n\t\t\t\t\t暂未设置好店标签\n\t\t\t\t")])]),t._v(" "),o("van-cell-group",[o("van-field",{attrs:{label:"添加标签",placeholder:"请填写好店标签",icon:"add"},on:{"click-icon":t.onAddTag},model:{value:t.tag,callback:function(e){t.tag=e},expression:"tag"}})],1)]:t._e(),t._v(" "),o("div",{staticClass:"padding-15"},[o("van-button",{staticClass:"bg-info",attrs:{size:"normal",disabled:!t.islegal,block:""},on:{click:t.onSubmit}},[t._v("保存修改")])],1)],2),t._v(" "),t.showPreLoading?o("iloading"):t._e()],1)},staticRenderFns:[]};var d=o("VU/8")(r,c,!1,function(t){o("pAiq")},null,null);e.default=d.exports}});
//# sourceMappingURL=49.2db588b1d014319aed79.js.map