webpackJsonp([85],{fSXx:function(t,s){},u3db:function(t,s,e){"use strict";Object.defineProperty(s,"__esModule",{value:!0});var i=e("Cz8s"),a=e("mzkE"),r=e("deIj"),o={components:{PublicHeader:i.a,PublicFooter:a.a},data:function(){return{active:0,filter:{items:{status:0,order_type:"takeout"}},title:{1:"所有",2:"未完成",3:"已完成",4:"已取消"},records:{page:1,psize:15,loading:!0,finished:!1,empty:!1,data:[]},config:{spread_types:[]},showPreLoading:!0,menufooter:{}}},methods:{onLoad:function(t){var s=this;Object(r.b)({vue:s,force:t,url:"spread/order/index",data:{menufooter:1},success:function(t){s.config=t.config,s.menufooter=window.menufooter}})},onChangeStatus:function(t,s){this.filter.items.status!=t&&(this.filter.items.status=t,this.onLoad(!0))},onToggleOrdertype:function(t){this.filter.items.order_type!=t&&(this.filter.items.order_type=t,this.onLoad(!0))}},mounted:function(){this.onLoad()}},n={render:function(){var t=this,s=t.$createElement,e=t._self._c||s;return e("div",{attrs:{id:"spread-order"}},[e("public-header",{attrs:{title:"推广订单"}}),t._v(" "),e("public-footer",{attrs:{preLoading:t.showPreLoading,menufooter:t.menufooter}}),t._v(" "),e("div",{staticClass:"content",style:{"padding-top":1==t.config.spread_types.length?"0px":"45px"}},[t.config.spread_types.length>1?e("div",{staticClass:"tab-group"},[t._l(t.config.spread_types,function(s){return[e("div",{staticClass:"tab-item",class:{active:t.filter.items.order_type==s.type},on:{click:function(e){return t.onToggleOrdertype(s.type)}}},[t._v(t._s(s.title))])]})],2):t._e(),t._v(" "),1==t.config.spread_types.length?[e("van-tabs",{attrs:{swipeable:""},on:{click:t.onChangeStatus},model:{value:t.active,callback:function(s){t.active=s},expression:"active"}},t._l(4,function(s,i){return e("van-tab",{key:i,attrs:{title:t.title[s]}},[t.records.empty?e("div",{staticClass:"current-list"},[e("div",{staticClass:"no-data"},[e("div",{staticClass:"bg"}),t._v(" "),e("p",[t._v("暂时没有推广订单哦～")])])]):e("van-list",{attrs:{finished:t.records.finished,offset:100,"immediate-check":!1},on:{load:t.onLoad},model:{value:t.records.loading,callback:function(s){t.$set(t.records,"loading",s)},expression:"records.loading"}},[e("div",{staticClass:"current-list"},[e("div",{staticClass:"list-block"},[e("ul",{staticClass:"list"},t._l(t.records.data,function(s,i){return e("li",{key:i,staticClass:"item-content"},[e("router-link",{attrs:{to:t.util.getUrl({path:"pages/spread/detail",query:{id:s.id,order_type:t.filter.items.order_type}})}},[e("div",{staticClass:"item-inner"},[e("div",{staticClass:"item-title"},[e("div",{staticClass:"item-title-top"},[t._v(t._s(s.ordersn)),s.spread1==s.spreadid?e("span",[t._v("（一级）")]):t._e(),t._v(" "),s.spread2==s.spreadid?e("span",[t._v("（二级）")]):t._e()]),t._v(" "),e("div",{staticClass:"item-title-bottom"},[t._v(t._s(s.paytime_cn))])]),t._v(" "),e("div",{staticClass:"item-after"},[e("div",{staticClass:"item-title-top"},[t._v("+"+t._s(s.commission))]),t._v(" "),e("div",{staticClass:"item-title-bottom"},[t._v(t._s(s.status_cn))])])])]),t._v(" "),1==s.spreadbalance?e("span",{staticClass:"success"},[t._v("已结算")]):e("span",{staticClass:"danger"},[t._v("未结算")]),t._v(" "),e("van-icon",{attrs:{name:"right"}})],1)}),0)])]),t._v(" "),t.records.finished?e("div",{staticClass:"loaded"},[e("div",{staticClass:"loaded-tips"},[t._v("没有更多了")])]):t._e()])],1)}),1)]:[t.records.empty?e("div",{staticClass:"current-list"},[e("div",{staticClass:"no-data"},[e("div",{staticClass:"bg"}),t._v(" "),e("p",[t._v("暂时没有推广订单哦～")])])]):e("van-list",{attrs:{finished:t.records.finished,offset:100,"immediate-check":!1},on:{load:t.onLoad},model:{value:t.records.loading,callback:function(s){t.$set(t.records,"loading",s)},expression:"records.loading"}},[e("div",{staticClass:"current-list"},[e("div",{staticClass:"list-block"},[e("ul",{staticClass:"list"},t._l(t.records.data,function(s,i){return e("li",{key:i,staticClass:"item-content"},[e("router-link",{attrs:{to:t.util.getUrl({path:"pages/spread/detail",query:{id:s.id,order_type:t.filter.items.order_type}})}},[e("div",{staticClass:"item-inner"},[e("div",{staticClass:"item-title"},[e("div",{staticClass:"item-title-top"},[t._v(t._s(s.ordersn)),s.spread1==s.spreadid?e("span",[t._v("（一级）")]):t._e(),t._v(" "),s.spread2==s.spreadid?e("span",[t._v("（二级）")]):t._e()]),t._v(" "),e("div",{staticClass:"item-title-bottom"},[t._v(t._s(s.paytime_cn))])]),t._v(" "),e("div",{staticClass:"item-after"},[e("div",{staticClass:"item-title-top"},[t._v("+"+t._s(s.commission))]),t._v(" "),e("div",{staticClass:"item-title-bottom"},[t._v(t._s(s.status_cn))])])])]),t._v(" "),1==s.spreadbalance?e("span",{staticClass:"success"},[t._v("已结算")]):e("span",{staticClass:"danger"},[t._v("未结算")]),t._v(" "),e("van-icon",{attrs:{name:"right"}})],1)}),0)])]),t._v(" "),t.records.finished?e("div",{staticClass:"loaded"},[e("div",{staticClass:"loaded-tips"},[t._v("没有更多了")])]):t._e()])]],2)],1)},staticRenderFns:[]};var d=e("VU/8")(o,n,!1,function(t){e("fSXx")},null,null);s.default=d.exports}});
//# sourceMappingURL=85.0dd1f38e93874ffd5307.js.map