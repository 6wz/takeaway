webpackJsonp([64],{Q3Gn:function(t,o){},icPS:function(t,o,e){"use strict";Object.defineProperty(o,"__esModule",{value:!0});var s=e("mvHQ"),i=e.n(s),a=e("woOf"),n=e.n(a),l=e("Cz8s"),p=e("+CBI"),c=e("deIj"),d={components:{publicHeader:l.a,iswitch:p.a},data:function(){return{showPreLoading:!0,id:0,popupStatus:{category:!1,type:!1,huangou:!1},thumb:{},goodsTemp:{title:"",price:0,ts_price:0,box_price:0,svip_price:0,unitname:"",unitnum:1,label:"",total:-1,status:1,is_hot:0,type:3,description:"",category_title:"",type_title:"",options:[],attrs:[],huangou_status:0,huangou_type:1,huangou_title:"支持换购和购买"},categorys:{},types:{},huangou_types:{}}},methods:{onLoad:function(){var t=this;Object(c.a)({vue:t,url:"manage/goods/index/post",data:{id:t.id,_account_perm:1},success:function(o){t.categorys=o.categorys,t.goodsTemp=n()(t.goodsTemp,o.goods),t.types=o.type,t.huangou_types=o.huangou_types,t.id>0&&(t.thumb.url=t.goodsTemp.thumb_)}})},onTogglePopup:function(t){this.popupStatus[t]=!this.popupStatus[t]},onConfirmCategory:function(t){t.parentid>0?(this.goodsTemp.cid=t.parentid,this.goodsTemp.child_id=t.id):(this.goodsTemp.cid=t.id,this.goodsTemp.child_id=0),this.goodsTemp.category_title=t.title,this.onTogglePopup("category")},onConfirmType:function(t){this.goodsTemp.type=t.id,this.goodsTemp.type_title=t.title,this.onTogglePopup("type")},onConfirmHuangou:function(t){this.goodsTemp.huangou_type=t.id,this.goodsTemp.huangou_title=t.title,this.onTogglePopup("huangou")},onUploadImage:function(t){var o=this;o.util.image({obj:t,success:function(t,e){e.url&&e.filename&&(o.thumb={url:e.url,filename:e.filename},o.thumb=n()({},o.thumb),o.goodsTemp.thumb=o.thumb.filename)},options:{channel:"h5"}})},jsToggleSwitch:function(t){this.util.jsToggleSwitch({vue:this,key:t.keys,value:t.value})},onAddOptions:function(){this.goodsTemp.options.push({id:0,name:"",price:0,svip_price:0,total:-1,total_warning:0,displayorder:0})},onDelOptions:function(t){this.goodsTemp.options.splice(t,1)},onAddAttrs:function(){this.goodsTemp.attrs.push({name:"",goodsLabel:"",label:[]})},onDelAttr:function(t){this.goodsTemp.attrs.splice(t,1)},onAddAttr:function(t){if(!this.goodsTemp.attrs[t].goodsLabel)return this.util.$toast("请输入有效的属性标签","",1e3),!1;this.goodsTemp.attrs[t].label.push(this.goodsTemp.attrs[t].goodsLabel),this.goodsTemp.attrs[t].goodsLabel=""},onDeleteAtt:function(t,o){this.goodsTemp.attrs[t].label.splice(o,1)},onSubmit:function(){return this.goodsTemp.title?this.goodsTemp.price?this.goodsTemp.ts_price?this.goodsTemp.cid?this.goodsTemp.type?void Object(c.c)({vue:this,url:"manage/goods/index/post",data:{id:this.id,params:i()(this.goodsTemp)},redirect:this.util.getUrl({path:"pages/goods/index"})}):(this.util.$toast("请选择商品所属类型","",1e3),!1):(this.util.$toast("请选择商品所属分类","",1e3),!1):(this.util.$toast("商品店内价格不能为空","",1e3),!1):(this.util.$toast("商品外卖价格不能为空","",1e3),!1):(this.util.$toast("商品名称不能为空","",1e3),!1)}},mounted:function(){this.onLoad()},created:function(){this.query=this.$route.query,this.query&&this.query.id&&(this.id=this.query.id)}},r={render:function(){var t=this,o=t.$createElement,e=t._self._c||o;return e("div",{attrs:{id:"goods-post"}},[e("public-header",{attrs:{title:"商品编辑"}}),t._v(" "),e("div",{staticClass:"content"},[e("div",{staticClass:"padding-10-tb padding-15-lr font-14 c-gray"},[t._v("基本信息")]),t._v(" "),e("van-cell-group",[e("van-cell",{staticClass:"no-fix flex ",attrs:{title:"商品图片"}},[e("div",{staticClass:"flex goods-thumb-wrap",attrs:{slot:"right-icon"},slot:"right-icon"},[t.thumb.url?e("img",{staticClass:"goods-thumb ",attrs:{src:t.thumb.url,alt:""}}):e("img",{staticClass:"goods-thumb ",attrs:{src:"static/img/add_pic.png",alt:""}}),t._v(" "),e("input",{staticClass:"weui-uploader__input",attrs:{type:"file",multiple:"multiple",accept:"image/*"},on:{change:function(o){t.onUploadImage(o)}}})])]),t._v(" "),e("van-field",{attrs:{label:"商品名称",placeholder:"请输入商品名称"},model:{value:t.goodsTemp.title,callback:function(o){t.$set(t.goodsTemp,"title",o)},expression:"goodsTemp.title"}}),t._v(" "),e("van-field",{attrs:{label:"外卖价格",placeholder:"给商品定个好价格"},model:{value:t.goodsTemp.price,callback:function(o){t.$set(t.goodsTemp,"price",o)},expression:"goodsTemp.price"}}),t._v(" "),t.util.checkplugin("svip")?e("van-field",{attrs:{label:"超级会员价格",placeholder:"超级会员价格小于外卖现价才能生效"},model:{value:t.goodsTemp.svip_price,callback:function(o){t.$set(t.goodsTemp,"svip_price",o)},expression:"goodsTemp.svip_price"}}):t._e(),t._v(" "),e("van-field",{attrs:{label:"店内价格",placeholder:"给商品定个好价格"},model:{value:t.goodsTemp.ts_price,callback:function(o){t.$set(t.goodsTemp,"ts_price",o)},expression:"goodsTemp.ts_price"}}),t._v(" "),e("van-field",{attrs:{label:"餐盒费",placeholder:"请输入餐盒费"},model:{value:t.goodsTemp.box_price,callback:function(o){t.$set(t.goodsTemp,"box_price",o)},expression:"goodsTemp.box_price"}}),t._v(" "),e("van-field",{attrs:{label:"起购数量",placeholder:"商品最小购买份数"},model:{value:t.goodsTemp.unitnum,callback:function(o){t.$set(t.goodsTemp,"unitnum",o)},expression:"goodsTemp.unitnum"}}),t._v(" "),e("van-field",{attrs:{label:"单位",placeholder:"份/盘/斤"},model:{value:t.goodsTemp.unitname,callback:function(o){t.$set(t.goodsTemp,"unitname",o)},expression:"goodsTemp.unitname"}}),t._v(" "),e("van-field",{attrs:{label:"标签",placeholder:"热卖,新品,爆款等,不超过两个字"},model:{value:t.goodsTemp.label,callback:function(o){t.$set(t.goodsTemp,"label",o)},expression:"goodsTemp.label"}})],1),t._v(" "),e("div",{staticClass:"padding-10-tb padding-15-lr font-14 c-gray"},[t._v("商品设置")]),t._v(" "),e("van-cell-group",[e("van-cell",{attrs:{title:"商品分类"}},[e("div",{staticClass:"flex",attrs:{slot:"right-icon"},on:{click:function(o){t.onTogglePopup("category")}},slot:"right-icon"},[e("span",[t._v(t._s(t.goodsTemp.category_title?t.goodsTemp.category_title:"请选择"))]),t._v(" "),e("van-icon",{attrs:{name:"arrow"}})],1)]),t._v(" "),e("van-cell",{attrs:{title:"商品类型"}},[e("div",{staticClass:"flex",attrs:{slot:"right-icon"},on:{click:function(o){t.onTogglePopup("type")}},slot:"right-icon"},[e("span",[t._v(t._s(t.goodsTemp.type_title?t.goodsTemp.type_title:"请选择"))]),t._v(" "),e("van-icon",{attrs:{name:"arrow"}})],1)]),t._v(" "),"1"==t.goodsTemp.huangou_status?e("van-cell",{attrs:{title:"换购设置"}},[e("div",{staticClass:"flex",attrs:{slot:"right-icon"},on:{click:function(o){t.onTogglePopup("huangou")}},slot:"right-icon"},[e("span",[t._v(t._s(t.goodsTemp.huangou_title?t.goodsTemp.huangou_title:"请选择"))]),t._v(" "),e("van-icon",{attrs:{name:"arrow"}})],1)]):t._e(),t._v(" "),e("van-cell",{attrs:{title:"上架"}},[e("iswitch",{attrs:{slot:"right-icon",value:t.goodsTemp.status,"condition-open":"1","condition-close":"0","text-open":"上架","text-close":"下架",keys:"goodsTemp.status"},on:{change:t.jsToggleSwitch},slot:"right-icon"})],1),t._v(" "),e("van-cell",{attrs:{title:"热销"}},[e("iswitch",{attrs:{slot:"right-icon",value:t.goodsTemp.is_hot,"condition-open":"1","condition-close":"0","text-open":"热销","text-close":"关闭",keys:"goodsTemp.is_hot"},on:{change:t.jsToggleSwitch},slot:"right-icon"})],1)],1),t._v(" "),e("div",{staticClass:"padding-10-tb padding-15-lr font-14 c-gray"},[t._v("商品描述")]),t._v(" "),e("van-cell-group",[e("van-field",{attrs:{type:"textarea",placeholder:"请输入商品描述",rows:"3"},model:{value:t.goodsTemp.description,callback:function(o){t.$set(t.goodsTemp,"description",o)},expression:"goodsTemp.description"}})],1),t._v(" "),e("div",{staticClass:"padding-10-tb padding-15-lr font-14 c-gray"},[t._v("其他信息")]),t._v(" "),e("van-cell-group",[e("van-field",{attrs:{label:"总库存",placeholder:"请输入总库存"},model:{value:t.goodsTemp.total,callback:function(o){t.$set(t.goodsTemp,"total",o)},expression:"goodsTemp.total"}}),t._v(" "),e("van-field",{attrs:{label:"排序",placeholder:"数字越大越靠前"},model:{value:t.goodsTemp.displayorder,callback:function(o){t.$set(t.goodsTemp,"displayorder",o)},expression:"goodsTemp.displayorder"}})],1),t._v(" "),t._l(t.goodsTemp.options,function(o,s){return[e("van-cell-group",{staticClass:"margin-10-t"},[e("van-field",{attrs:{label:"规格",placeholder:"输入规格名称, 例如大杯"},model:{value:t.goodsTemp.options[s].name,callback:function(o){t.$set(t.goodsTemp.options[s],"name",o)},expression:"goodsTemp.options[index].name"}}),t._v(" "),e("van-field",{attrs:{label:"价格",placeholder:"输入商品价格(元)"},model:{value:t.goodsTemp.options[s].price,callback:function(o){t.$set(t.goodsTemp.options[s],"price",o)},expression:"goodsTemp.options[index].price"}}),t._v(" "),t.util.checkplugin("svip")?e("van-field",{attrs:{label:"会员价",placeholder:"输入商品会员价格(元)"},model:{value:t.goodsTemp.options[s].svip_price,callback:function(o){t.$set(t.goodsTemp.options[s],"svip_price",o)},expression:"goodsTemp.options[index].svip_price"}}):t._e(),t._v(" "),e("van-field",{attrs:{label:"库存",placeholder:"请输入库存, -1表示不限制"},model:{value:t.goodsTemp.options[s].total,callback:function(o){t.$set(t.goodsTemp.options[s],"total",o)},expression:"goodsTemp.options[index].total"}}),t._v(" "),e("van-field",{attrs:{label:"库存预警",placeholder:"请输入库存"},model:{value:t.goodsTemp.options[s].total_warning,callback:function(o){t.$set(t.goodsTemp.options[s],"total_warning",o)},expression:"goodsTemp.options[index].total_warning"}}),t._v(" "),e("van-field",{attrs:{label:"排序",placeholder:"请输入排序"},model:{value:t.goodsTemp.options[s].displayorder,callback:function(o){t.$set(t.goodsTemp.options[s],"displayorder",o)},expression:"goodsTemp.options[index].displayorder"}})],1),t._v(" "),e("div",{staticClass:"delete-option",on:{click:function(o){t.onDelOptions(s)}}},[t._v("删除商品规格")])]}),t._v(" "),e("div",{staticClass:"add-option",on:{click:t.onAddOptions}},[t._m(0)]),t._v(" "),t._l(t.goodsTemp.attrs,function(o,s){return[e("van-cell-group",{staticClass:"margin-10-t"},[e("van-field",{attrs:{label:"属性名称",placeholder:"例如: 辣度",icon:"delete"},on:{"click-icon":function(o){t.onDelAttr(s)}},model:{value:t.goodsTemp.attrs[s].name,callback:function(o){t.$set(t.goodsTemp.attrs[s],"name",o)},expression:"goodsTemp.attrs[index].name"}}),t._v(" "),e("van-field",{attrs:{label:"属性标签",placeholder:"请填写属性标签，如：微辣",icon:"add"},on:{"click-icon":function(o){t.onAddAttr(s)}},model:{value:t.goodsTemp.attrs[s].goodsLabel,callback:function(o){t.$set(t.goodsTemp.attrs[s],"goodsLabel",o)},expression:"goodsTemp.attrs[index].goodsLabel"}}),t._v(" "),o.label&&o.label.length>0?e("div",{staticClass:"attrs-list"},t._l(o.label,function(o,i){return e("div",{staticClass:"attrs-item"},[t._v("\n\t\t\t\t\t\t"+t._s(o)+"\n\t\t\t\t\t\t"),e("i",{staticClass:"icon icon-close c-gray",on:{click:function(o){t.onDeleteAtt(s,i)}}})])})):t._e()],1)]}),t._v(" "),e("div",{staticClass:"add-attrs",on:{click:t.onAddAttrs}},[t._m(1)]),t._v(" "),e("div",{staticClass:"padding-15"},[e("van-button",{staticClass:"bg-info font-16",attrs:{size:"normal",block:""},on:{click:t.onSubmit}},[t._v("保存")]),t._v(" "),t.id>0?e("van-button",{staticClass:"bg-danger font-16 margin-15-t",attrs:{size:"normal",block:""},on:{click:function(o){t.util.jspost({url:"manage/goods/index/del",data:{id:t.id},confirm:"确定删除此商品吗",successUrl:t.util.getUrl({path:"pages/goods/index",query:{cid:t.goodsTemp.cid}})})}}},[t._v("删除")]):t._e()],1)],2),t._v(" "),e("van-popup",{attrs:{position:"bottom"},model:{value:t.popupStatus.category,callback:function(o){t.$set(t.popupStatus,"category",o)},expression:"popupStatus.category"}},[e("van-picker",{attrs:{"show-toolbar":"",title:"所属分类",columns:t.categorys,"value-key":"title"},on:{cancel:function(o){t.onTogglePopup("category")},confirm:t.onConfirmCategory}})],1),t._v(" "),e("van-popup",{attrs:{position:"bottom"},model:{value:t.popupStatus.type,callback:function(o){t.$set(t.popupStatus,"type",o)},expression:"popupStatus.type"}},[e("van-picker",{attrs:{"show-toolbar":"",title:"商品类型",columns:t.types,"value-key":"title"},on:{cancel:function(o){t.onTogglePopup("type")},confirm:t.onConfirmType}})],1),t._v(" "),e("van-popup",{attrs:{position:"bottom"},model:{value:t.popupStatus.huangou,callback:function(o){t.$set(t.popupStatus,"huangou",o)},expression:"popupStatus.huangou"}},[e("van-picker",{attrs:{"show-toolbar":"",title:"换购设置",columns:t.huangou_types,"value-key":"title"},on:{cancel:function(o){t.onTogglePopup("huangou")},confirm:t.onConfirmHuangou}})],1),t._v(" "),t.showPreLoading?e("iloading"):t._e()],1)},staticRenderFns:[function(){var t=this.$createElement,o=this._self._c||t;return o("span",{staticClass:"flex"},[o("i",{staticClass:"icon icon-add font-18"}),this._v(" "),o("span",[this._v("添加商品规格")])])},function(){var t=this.$createElement,o=this._self._c||t;return o("span",{staticClass:"flex"},[o("i",{staticClass:"icon icon-add font-18"}),this._v(" "),o("span",[this._v("添加商品属性")])])}]};var u=e("VU/8")(d,r,!1,function(t){e("Q3Gn")},null,null);o.default=u.exports}});
//# sourceMappingURL=64.175b117c506994c98f87.js.map