webpackJsonp([37],{GszM:function(e,t){},w3Pa:function(e,t,r){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var i=r("mvHQ"),s=r.n(i),a=r("woOf"),o=r.n(a),l=r("Cz8s"),n=r("+CBI"),v=r("deIj"),c={components:{publicHeader:l.a,iswitch:n.a},data:function(){return{id:0,store:{delivery_mode:0,delivery_type:3,delivery_within_days:0,delivery_reserve_days:0,serve_radius:0,delivery_area:"",not_in_serve_radius:0,auto_get_address:0,delivery_time:0,pack_price:0,delivery_fee_mode:"1",send_price:0,delivery_free_price:0,delivery_price:0,delivery_price_extra:{start_fee:0,start_km:0,pre_km_fee:0,over_km:0,over_pre_km_fee:0,max_fee:0,distance_type:2,calculate_distance_type:0}},deliveryFeePopup:!1,islegal:!1,showPreLoading:!0}},methods:{onTogglePopup:function(){if(3==this.store.delivery_fee_mode||2==this.store.delivery_mode)return!1;this.deliveryFeePopup=!this.deliveryFeePopup},onChangeStoreDeliveryFeeMode:function(e){if(2==this.store.delivery_mode)return this.util.$toast("当前门店的配送模式为平台配送,如需修改该项设置,请联系平台管理员"),!1;this.store.delivery_fee_mode=e,this.store=o()({},this.store)},onLoad:function(){var e=this;Object(v.a)({url:"manage/shop/index/account",vue:e,autoAssign:!0,variable:"store",success:function(t){e.islegal=!0}})},onSubmit:function(){var e=this;if(!e.islegal)return!1;e.islegal=!1,Object(v.c)({url:"manage/shop/index/account",vue:e,data:{store:s()(e.store)},fail:function(t){e.util.$toast(t),e.islegal=!0},success:function(t){e.islegal=!0,e.util.$toast(t,e.util.getUrl({path:"pages/shop/index"}),1e3)}})},jsToggleSwitch:function(e){this.util.jsToggleSwitch({vue:this,key:e.key||e.keys,value:e.value})}},created:function(){},mounted:function(){this.onLoad()}},_={render:function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("div",{attrs:{id:"store-account"}},[r("public-header",{attrs:{title:"账户设置"}}),e._v(" "),r("div",{staticClass:"content"},[r("van-radio-group",{model:{value:e.store.delivery_type,callback:function(t){e.$set(e.store,"delivery_type",t)},expression:"store.delivery_type"}},[r("van-cell-group",[r("van-cell",{attrs:{title:"配送方式"}}),e._v(" "),r("van-cell",{staticClass:"border-0px",attrs:{title:"仅支持商家配送",clickable:""},on:{click:function(t){e.store.delivery_type="1"}}},[r("van-radio",{attrs:{name:"1"}})],1),e._v(" "),r("van-cell",{staticClass:"border-0px",attrs:{title:"仅支持到店自提",clickable:""},on:{click:function(t){e.store.delivery_type="2"}}},[r("van-radio",{attrs:{name:"2"}})],1),e._v(" "),r("van-cell",{staticClass:"border-0px",attrs:{title:"商家配送,到店自提都支持",clickable:""},on:{click:function(t){e.store.delivery_type="3"}}},[r("van-radio",{attrs:{name:"3"}})],1)],1)],1),e._v(" "),r("van-cell-group",{staticClass:"margin-10-t"},[r("van-cell",[r("div",{attrs:{slot:"title"},slot:"title"},[e._v("可提前几天点外卖")]),e._v(" "),r("div",{attrs:{slot:"right-icon"},slot:"right-icon"},[r("div",{staticClass:"input-unit"},[r("input",{directives:[{name:"model",rawName:"v-model.number",value:e.store.delivery_within_days,expression:"store.delivery_within_days",modifiers:{number:!0}}],domProps:{value:e.store.delivery_within_days},on:{input:function(t){t.target.composing||e.$set(e.store,"delivery_within_days",e._n(t.target.value))},blur:function(t){e.$forceUpdate()}}}),r("span",[e._v("天")])])])]),e._v(" "),r("van-cell",[r("div",{attrs:{slot:"title"},slot:"title"},[e._v("需提前几天预定外卖")]),e._v(" "),r("div",{attrs:{slot:"right-icon"},slot:"right-icon"},[r("div",{staticClass:"input-unit"},[r("input",{directives:[{name:"model",rawName:"v-model.number",value:e.store.delivery_reserve_days,expression:"store.delivery_reserve_days",modifiers:{number:!0}}],domProps:{value:e.store.delivery_reserve_days},on:{input:function(t){t.target.composing||e.$set(e.store,"delivery_reserve_days",e._n(t.target.value))},blur:function(t){e.$forceUpdate()}}}),r("span",[e._v("天")])])])])],1),e._v(" "),r("van-cell-group",{staticClass:"margin-10-t"},[r("van-cell",[r("div",{attrs:{slot:"title"},slot:"title"},[e._v("服务半径")]),e._v(" "),r("div",{attrs:{slot:"right-icon"},slot:"right-icon"},[r("div",{staticClass:"input-unit"},[r("input",{directives:[{name:"model",rawName:"v-model.number",value:e.store.serve_radius,expression:"store.serve_radius",modifiers:{number:!0}}],attrs:{disabled:2==e.store.delivery_mode},domProps:{value:e.store.serve_radius},on:{input:function(t){t.target.composing||e.$set(e.store,"serve_radius",e._n(t.target.value))},blur:function(t){e.$forceUpdate()}}}),r("span",[e._v("km")])])])]),e._v(" "),r("van-field",{attrs:{label:"配送区域",placeholder:"请输入配送区域","input-align":"right",disabled:2==e.store.delivery_mode},model:{value:e.store.delivery_area,callback:function(t){e.$set(e.store,"delivery_area",t)},expression:"store.delivery_area"}}),e._v(" "),1==e.store.delivery_mode?r("van-cell",[r("div",{attrs:{slot:"title"},slot:"title"},[e._v("配送半径外允许下单")]),e._v(" "),r("iswitch",{attrs:{slot:"right-icon",value:e.store.not_in_serve_radius,"text-open":"ON","text-close":"OFF",keys:"store.not_in_serve_radius"},on:{change:e.jsToggleSwitch},slot:"right-icon"})],1):e._e(),e._v(" "),1==e.store.delivery_mode?r("van-cell",[r("div",{attrs:{slot:"title"},slot:"title"},[e._v("收货地址自动获取")]),e._v(" "),r("iswitch",{attrs:{slot:"right-icon",value:e.store.auto_get_address,"text-open":"ON","text-close":"OFF",keys:"store.auto_get_address"},on:{change:e.jsToggleSwitch},slot:"right-icon"})],1):e._e(),e._v(" "),r("van-cell",[r("div",{attrs:{slot:"title"},slot:"title"},[e._v("预计送达时间")]),e._v(" "),r("div",{attrs:{slot:"right-icon"},slot:"right-icon"},[r("div",{staticClass:"input-unit"},[r("input",{directives:[{name:"model",rawName:"v-model.number",value:e.store.delivery_time,expression:"store.delivery_time",modifiers:{number:!0}}],attrs:{disabled:2==e.store.delivery_mode},domProps:{value:e.store.delivery_time},on:{input:function(t){t.target.composing||e.$set(e.store,"delivery_time",e._n(t.target.value))},blur:function(t){e.$forceUpdate()}}}),r("span",[e._v("分")])])])])],1),e._v(" "),r("van-cell-group",{staticClass:"margin-10-t"},[r("van-cell",[r("div",{attrs:{slot:"title"},slot:"title"},[e._v("包装费")]),e._v(" "),r("div",{attrs:{slot:"right-icon"},slot:"right-icon"},[r("div",{staticClass:"input-unit"},[r("input",{directives:[{name:"model",rawName:"v-model.number",value:e.store.pack_price,expression:"store.pack_price",modifiers:{number:!0}}],domProps:{value:e.store.pack_price},on:{input:function(t){t.target.composing||e.$set(e.store,"pack_price",e._n(t.target.value))},blur:function(t){e.$forceUpdate()}}}),r("span",[e._v("元")])])])])],1),e._v(" "),r("van-radio-group",{staticClass:"margin-10-t",attrs:{disabled:2==e.store.delivery_mode},model:{value:e.store.delivery_fee_mode,callback:function(t){e.$set(e.store,"delivery_fee_mode",t)},expression:"store.delivery_fee_mode"}},[r("van-cell-group",[r("van-cell",{attrs:{title:"配送费"}},[r("div",{staticClass:"c-gray",attrs:{slot:"right-icon"},on:{click:function(t){e.onTogglePopup()}},slot:"right-icon"},[1==e.store.delivery_fee_mode||2==e.store.delivery_fee_mode?r("span",[e._v("具体设置")]):e._e(),e._v(" "),r("van-icon",{attrs:{name:"arrow"}})],1)]),e._v(" "),r("van-cell",{staticClass:"border-0px",attrs:{clickable:""},on:{click:function(t){e.onChangeStoreDeliveryFeeMode("1")}}},[r("div",{attrs:{slot:"title"},slot:"title"},[e._v("\n\t\t\t\t\t\t固定金额\n\t\t\t\t\t\t"),1==e.store.delivery_fee_mode?r("div",{staticClass:"diy-van-label"},[e._v("固定金额"+e._s(e.store.delivery_price)+"元")]):e._e()]),e._v(" "),r("van-radio",{attrs:{name:"1"}})],1),e._v(" "),r("van-cell",{staticClass:"border-0px no-fix",attrs:{clickable:""},on:{click:function(t){e.onChangeStoreDeliveryFeeMode("2")}}},[r("div",{attrs:{slot:"title"},slot:"title"},[e._v("\n\t\t\t\t\t\t按距离收取\n\t\t\t\t\t\t"),2==e.store.delivery_fee_mode?r("div",{staticClass:"diy-van-label"},[e._v("\n\t\t\t\t\t\t\t起步"+e._s(e.store.delivery_price_extra.start_km)+"km内"+e._s(e.store.delivery_price_extra.start_fee)+"元,每增加1km加"+e._s(e.store.delivery_price_extra.pre_km_fee)+"元,超过"+e._s(e.store.delivery_price_extra.over_km)+"km,\n\t\t\t\t\t\t\t"),r("br"),e._v("每增加1km加"+e._s(e.store.delivery_price_extra.over_pre_km_fee)+"元,最高"+e._s(e.store.delivery_price_extra.max_fee)+"元\n\t\t\t\t\t\t")]):e._e()]),e._v(" "),r("van-radio",{attrs:{name:"2"}})],1),e._v(" "),r("van-cell",{staticClass:"border-0px no-fix",attrs:{title:"按区域收取(需在PC端设置好之后才能选择)",clickable:""},on:{click:function(t){e.onChangeStoreDeliveryFeeMode("3")}}},[r("van-radio",{attrs:{name:"3"}})],1)],1)],1),e._v(" "),r("div",{staticClass:"padding-15"},[r("van-button",{staticClass:"bg-info",attrs:{size:"normal",disabled:!e.islegal,block:""},on:{click:e.onSubmit}},[e._v("保存修改")])],1)],1),e._v(" "),r("van-popup",{attrs:{position:"bottom"},model:{value:e.deliveryFeePopup,callback:function(t){e.deliveryFeePopup=t},expression:"deliveryFeePopup"}},[r("div",{staticClass:"popup-title"},[r("span",{staticClass:"c-gray",on:{click:e.onTogglePopup}},[e._v("取消")]),e._v(" "),1==e.store.delivery_fee_mode?r("span",[e._v("按固定金额收取")]):2==e.store.delivery_fee_mode?r("span",[e._v("按距离收取")]):e._e(),e._v(" "),r("span",{staticClass:"c-info",on:{click:e.onTogglePopup}},[e._v("确定")])]),e._v(" "),r("div",{staticClass:"popup-content"},[r("van-cell-group",[r("van-cell",[r("div",{attrs:{slot:"title"},slot:"title"},[e._v("起送价")]),e._v(" "),r("div",{attrs:{slot:"right-icon"},slot:"right-icon"},[r("div",{staticClass:"input-unit"},[r("input",{directives:[{name:"model",rawName:"v-model.number",value:e.store.send_price,expression:"store.send_price",modifiers:{number:!0}}],domProps:{value:e.store.send_price},on:{input:function(t){t.target.composing||e.$set(e.store,"send_price",e._n(t.target.value))},blur:function(t){e.$forceUpdate()}}}),r("span",[e._v("元")])])])]),e._v(" "),r("van-cell",[r("div",{attrs:{slot:"title"},slot:"title"},[e._v("满多少免配送费")]),e._v(" "),r("div",{attrs:{slot:"right-icon"},slot:"right-icon"},[r("div",{staticClass:"input-unit"},[r("input",{directives:[{name:"model",rawName:"v-model.number",value:e.store.delivery_free_price,expression:"store.delivery_free_price",modifiers:{number:!0}}],domProps:{value:e.store.delivery_free_price},on:{input:function(t){t.target.composing||e.$set(e.store,"delivery_free_price",e._n(t.target.value))},blur:function(t){e.$forceUpdate()}}}),r("span",[e._v("元")])])])])],1),e._v(" "),1==e.store.delivery_fee_mode?[r("van-cell-group",{staticClass:"margin-10-tb"},[r("van-cell",[r("div",{attrs:{slot:"title"},slot:"title"},[e._v("每单")]),e._v(" "),r("div",{attrs:{slot:"right-icon"},slot:"right-icon"},[r("div",{staticClass:"input-unit"},[r("input",{directives:[{name:"model",rawName:"v-model.number",value:e.store.delivery_price,expression:"store.delivery_price",modifiers:{number:!0}}],domProps:{value:e.store.delivery_price},on:{input:function(t){t.target.composing||e.$set(e.store,"delivery_price",e._n(t.target.value))},blur:function(t){e.$forceUpdate()}}}),r("span",[e._v("元")])])])])],1)]:2==e.store.delivery_fee_mode?[r("van-radio-group",{staticClass:"margin-10-t",model:{value:e.store.delivery_price_extra.distance_type,callback:function(t){e.$set(e.store.delivery_price_extra,"distance_type",t)},expression:"store.delivery_price_extra.distance_type"}},[r("van-cell-group",[r("van-cell",{attrs:{title:"路径计算方式"}}),e._v(" "),r("van-cell",{staticClass:"border-0px",attrs:{title:"直线距离",clickable:""},on:{click:function(t){e.store.delivery_price_extra.distance_type=0}}},[r("van-radio",{attrs:{name:0}})],1),e._v(" "),r("van-cell",{staticClass:"border-0px",attrs:{title:"骑行规划距离",clickable:""},on:{click:function(t){e.store.delivery_price_extra.distance_type=2}}},[r("van-radio",{attrs:{name:2}})],1),e._v(" "),r("van-cell",{staticClass:"border-0px",attrs:{title:"驾车导航距离",clickable:""},on:{click:function(t){e.store.delivery_price_extra.distance_type=1}}},[r("van-radio",{attrs:{name:1}})],1),e._v(" "),r("van-cell",{staticClass:"border-0px",attrs:{title:"步行距离",clickable:""},on:{click:function(t){e.store.delivery_price_extra.distance_type=3}}},[r("van-radio",{attrs:{name:3}})],1)],1)],1),e._v(" "),r("van-radio-group",{staticClass:"margin-10-t",model:{value:e.store.delivery_price_extra.calculate_distance_type,callback:function(t){e.$set(e.store.delivery_price_extra,"calculate_distance_type",t)},expression:"store.delivery_price_extra.calculate_distance_type"}},[r("van-cell-group",[r("van-cell",{attrs:{title:"配送距离计算方式"}}),e._v(" "),r("van-cell",{staticClass:"border-0px",attrs:{title:"默认",clickable:""},on:{click:function(t){e.store.delivery_price_extra.calculate_distance_type=0}}},[r("van-radio",{attrs:{name:0}})],1),e._v(" "),r("van-cell",{staticClass:"border-0px",attrs:{title:"向上取整",clickable:""},on:{click:function(t){e.store.delivery_price_extra.calculate_distance_type=1}}},[r("van-radio",{attrs:{name:2}})],1),e._v(" "),r("van-cell",{staticClass:"border-0px",attrs:{title:"向下取整",clickable:""},on:{click:function(t){e.store.delivery_price_extra.calculate_distance_type=2}}},[r("van-radio",{attrs:{name:1}})],1)],1)],1),e._v(" "),r("van-cell-group",{staticClass:"margin-10-t"},[r("van-cell",{attrs:{title:"计费规则"}}),e._v(" "),r("van-cell",{staticClass:"border-0px"},[r("div",{attrs:{slot:"title"},slot:"title"},[e._v("起送价")]),e._v(" "),r("div",{attrs:{slot:"right-icon"},slot:"right-icon"},[r("div",{staticClass:"input-unit"},[r("input",{directives:[{name:"model",rawName:"v-model.number",value:e.store.delivery_price_extra.start_fee,expression:"store.delivery_price_extra.start_fee",modifiers:{number:!0}}],domProps:{value:e.store.delivery_price_extra.start_fee},on:{input:function(t){t.target.composing||e.$set(e.store.delivery_price_extra,"start_fee",e._n(t.target.value))},blur:function(t){e.$forceUpdate()}}}),r("span",[e._v("元")])])])]),e._v(" "),r("van-cell",{staticClass:"border-0px"},[r("div",{attrs:{slot:"title"},slot:"title"},[e._v("起步价包含")]),e._v(" "),r("div",{attrs:{slot:"right-icon"},slot:"right-icon"},[r("div",{staticClass:"input-unit"},[r("input",{directives:[{name:"model",rawName:"v-model.number",value:e.store.delivery_price_extra.start_km,expression:"store.delivery_price_extra.start_km",modifiers:{number:!0}}],domProps:{value:e.store.delivery_price_extra.start_km},on:{input:function(t){t.target.composing||e.$set(e.store.delivery_price_extra,"start_km",e._n(t.target.value))},blur:function(t){e.$forceUpdate()}}}),r("span",[e._v("km")])])])]),e._v(" "),r("van-cell",{staticClass:"border-0px"},[r("div",{attrs:{slot:"title"},slot:"title"},[e._v("每增加1km加收")]),e._v(" "),r("div",{attrs:{slot:"right-icon"},slot:"right-icon"},[r("div",{staticClass:"input-unit"},[r("input",{directives:[{name:"model",rawName:"v-model.number",value:e.store.delivery_price_extra.pre_km_fee,expression:"store.delivery_price_extra.pre_km_fee",modifiers:{number:!0}}],domProps:{value:e.store.delivery_price_extra.pre_km_fee},on:{input:function(t){t.target.composing||e.$set(e.store.delivery_price_extra,"pre_km_fee",e._n(t.target.value))},blur:function(t){e.$forceUpdate()}}}),r("span",[e._v("元")])])])]),e._v(" "),r("van-cell",{staticClass:"border-0px"},[r("div",{attrs:{slot:"title"},slot:"title"},[e._v("超出")]),e._v(" "),r("div",{attrs:{slot:"right-icon"},slot:"right-icon"},[r("div",{staticClass:"input-unit"},[r("input",{directives:[{name:"model",rawName:"v-model.number",value:e.store.delivery_price_extra.over_km,expression:"store.delivery_price_extra.over_km",modifiers:{number:!0}}],domProps:{value:e.store.delivery_price_extra.over_km},on:{input:function(t){t.target.composing||e.$set(e.store.delivery_price_extra,"over_km",e._n(t.target.value))},blur:function(t){e.$forceUpdate()}}}),r("span",[e._v("km")])])])]),e._v(" "),r("van-cell",{staticClass:"border-0px"},[r("div",{attrs:{slot:"title"},slot:"title"},[e._v("每增加1km加收")]),e._v(" "),r("div",{attrs:{slot:"right-icon"},slot:"right-icon"},[r("div",{staticClass:"input-unit"},[r("input",{directives:[{name:"model",rawName:"v-model.number",value:e.store.delivery_price_extra.over_pre_km_fee,expression:"store.delivery_price_extra.over_pre_km_fee",modifiers:{number:!0}}],domProps:{value:e.store.delivery_price_extra.over_pre_km_fee},on:{input:function(t){t.target.composing||e.$set(e.store.delivery_price_extra,"over_pre_km_fee",e._n(t.target.value))},blur:function(t){e.$forceUpdate()}}}),r("span",[e._v("元")])])])]),e._v(" "),r("van-cell",{staticClass:"border-0px"},[r("div",{attrs:{slot:"title"},slot:"title"},[e._v("最高收取")]),e._v(" "),r("div",{attrs:{slot:"right-icon"},slot:"right-icon"},[r("div",{staticClass:"input-unit"},[r("input",{directives:[{name:"model",rawName:"v-model.number",value:e.store.delivery_price_extra.max_fee,expression:"store.delivery_price_extra.max_fee",modifiers:{number:!0}}],domProps:{value:e.store.delivery_price_extra.max_fee},on:{input:function(t){t.target.composing||e.$set(e.store.delivery_price_extra,"max_fee",e._n(t.target.value))},blur:function(t){e.$forceUpdate()}}}),r("span",[e._v("元")])])])])],1)]:e._e()],2)]),e._v(" "),e.showPreLoading?r("iloading"):e._e()],1)},staticRenderFns:[]};var d=r("VU/8")(c,_,!1,function(e){r("GszM")},null,null);t.default=d.exports}});
//# sourceMappingURL=37.4e04478c04c536155bc5.js.map