webpackJsonp([27],{FCrV:function(t,s){},n9QR:function(t,s,i){"use strict";Object.defineProperty(s,"__esModule",{value:!0});var a=i("Cz8s"),e=i("deIj"),o={data:function(){return{records:{page:1,psize:15,loading:!1,finished:!1,empty:!1,data:[]},filter:{items:{status:-1}},isRefresh:!1,showPreLoading:!0}},components:{publicHeader:a.a},methods:{onLoad:function(t){Object(e.b)({vue:this,force:t,url:"manage/gohome/order/list"})},onPullDownRefresh:function(){this.onLoad(!0)},onToggleStatus:function(t){t=parseInt(t),this.filter.items.status!=t&&(this.filter.items.status=t)}},mounted:function(){this.onLoad()},watch:{filter:{handler:function(t,s){this.onLoad(!0)},deep:!0}}},n={render:function(){var t=this,s=t.$createElement,i=t._self._c||s;return i("div",{attrs:{id:"order-index"}},[i("public-header",{attrs:{title:"核销订单"}}),t._v(" "),i("div",{staticClass:"content"},[i("div",{staticClass:"wrap-search"},[i("div",{staticClass:"tab-group flex-lr border-1px-b"},[i("div",{staticClass:"tab-item",class:{active:-1==t.filter.items.status},on:{click:function(s){t.onToggleStatus(-1)}}},[t._v("全部")]),t._v(" "),i("div",{staticClass:"tab-item",class:{active:1==t.filter.items.status},on:{click:function(s){t.onToggleStatus(1)}}},[t._v("待付款")]),t._v(" "),i("div",{staticClass:"tab-item",class:{active:3==t.filter.items.status},on:{click:function(s){t.onToggleStatus(3)}}},[t._v("待使用")]),t._v(" "),i("div",{staticClass:"tab-item",class:{active:5==t.filter.items.status},on:{click:function(s){t.onToggleStatus(5)}}},[t._v("待评价")])])]),t._v(" "),i("van-pull-refresh",{on:{refresh:function(s){t.onPullDownRefresh()}},model:{value:t.isRefresh,callback:function(s){t.isRefresh=s},expression:"isRefresh"}},[t.records.empty?i("div",{staticClass:"no-data"},[i("img",{attrs:{src:"static/img/order_no_con.png",alt:""}}),t._v(" "),i("p",[t._v("暂无数据!")])]):i("van-list",{staticClass:"order-list",attrs:{finished:t.records.finished,offset:100,"immediate-check":!1},on:{load:t.onLoad},model:{value:t.records.loading,callback:function(s){t.$set(t.records,"loading",s)},expression:"records.loading"}},[i("div",{staticClass:"order-group"},t._l(t.records.data,function(s,a){return i("div",{key:s.id,staticClass:"order-item"},[i("div",{staticClass:"order-title flex-lr van-hairline--bottom"},[i("div",{staticClass:"flex"},[i("div",{staticClass:"number"},[t._v("#"+t._s(s.goods_id))]),t._v(" "),i("div",{staticClass:"itag",class:s.order_type_css},[t._v(t._s(s.order_type_cn))])]),t._v(" "),i("div",{staticClass:"font-14 c-danger"},[t._v(t._s(s.status_cn))])]),t._v(" "),i("div",{staticClass:"order-goods van-hairline--bottom"},[i("div",{staticClass:"flex-lr"},[i("div",{staticClass:"flex goods-info"},[i("div",{staticClass:"goods-img"},[i("img",{staticClass:"img-100",attrs:{src:s.store.logo,alt:""}})]),t._v(" "),i("div",{staticClass:"goods-name font-14"},[t._v(t._s(s.goods.name))]),t._v(" "),i("div",{staticClass:"font-14 c-gray"},[t._v("x"+t._s(s.num))])]),t._v(" "),i("div",{staticClass:"c-danger font-14"},[t._v("￥"+t._s(s.price))])]),t._v(" "),i("div",{staticClass:"flex-lr padding-10-t"},[i("div",{staticClass:"flex"},[i("div",{staticClass:"font-15"},[t._v(t._s(s.username))]),t._v(" "),i("div",{staticClass:"font-14 c-gray padding-10-lr"},[t._v(t._s(s.mobile))]),t._v(" "),i("div",{staticClass:"icon icon-phone2 c-info font-16",on:{click:function(i){t.util.jsUrl("tel:"+s.mobile)}}})]),t._v(" "),i("div",{staticClass:"font-14 c-info"},[t._v(t._s(s.pay_type_cn))])])]),t._v(" "),i("div",{staticClass:"padding-10"},[i("div",{staticClass:"flex font-14 c-gray"},[i("div",[t._v("订单编号：")]),t._v(" "),i("div",[t._v(t._s(s.ordersn))])]),t._v(" "),i("div",{staticClass:"flex font-14 c-gray order-time"},[i("div",[t._v("支付时间：")]),t._v(" "),i("div",[t._v(t._s(s.paytime_cn))])]),t._v(" "),i("div",{staticClass:"flex font-14 c-danger order-time"},[i("div",[t._v("截止时间：")]),t._v(" "),i("div",[t._v(t._s(t.util.formatDate(s.overtime,"datetime")))])])])])})),t._v(" "),t.records.finished?i("div",{staticClass:"loaded"},[i("div",{staticClass:"loaded-tips"},[t._v("没有更多了")])]):t._e()])],1),t._v(" "),t._m(0)],1),t._v(" "),t.showPreLoading?i("iloading"):t._e()],1)},staticRenderFns:[function(){var t=this.$createElement,s=this._self._c||t;return s("div",{staticClass:"btn-group"},[s("div",{staticClass:"btn-item bg-info"},[this._v("核销码核销")]),this._v(" "),s("div",{staticClass:"btn-item bg-danger"},[this._v("扫码核销")])])}]};var l=i("VU/8")(o,n,!1,function(t){i("FCrV")},null,null);s.default=l.exports}});
//# sourceMappingURL=27.69abbc5e0baef799eb50.js.map