webpackJsonp([68],{"23hU":function(t,s,e){"use strict";Object.defineProperty(s,"__esModule",{value:!0});var i=e("Cz8s"),a=e("deIj"),r={data:function(){return{records:{page:1,psize:15,loading:!1,finished:!1,empty:!1,data:[]},isRefresh:!1,showPreLoading:!0,filter:{items:{status:"-1"}}}},components:{publicHeader:i.a},methods:{onLoad:function(t){Object(a.b)({vue:this,force:t,url:"plateform/deliveryCard/order/order"})},onPullDownRefresh:function(){this.onLoad(!0)},onToggleStatus:function(t){t=parseInt(t),this.filter.items.status!=t&&(this.filter.items.status=t)}},mounted:function(){this.onLoad()},watch:{filter:{handler:function(t,s){this.onLoad(!0)},deep:!0}}},d={render:function(){var t=this,s=t.$createElement,e=t._self._c||s;return e("div",{attrs:{id:"deliveryCard-order"}},[e("public-header",{attrs:{title:"购买记录"}}),t._v(" "),e("div",{staticClass:"content"},[e("div",{staticClass:"wrap-search wrap-search-input"},[e("div",{staticClass:"tab-group flex-lr border-1px-b"},[e("div",{staticClass:"tab-item",class:{active:-1==t.filter.items.status},on:{click:function(s){t.onToggleStatus(-1)}}},[t._v("全部")]),t._v(" "),e("div",{staticClass:"tab-item",class:{active:1==t.filter.items.status},on:{click:function(s){t.onToggleStatus(1)}}},[t._v("未到期")]),t._v(" "),e("div",{staticClass:"tab-item",class:{active:0==t.filter.items.status},on:{click:function(s){t.onToggleStatus(0)}}},[t._v("已到期")])]),t._v(" "),e("van-search",{attrs:{placeholder:"请输入用户姓名或UID"},model:{value:t.filter.items.keyword,callback:function(s){t.$set(t.filter.items,"keyword",s)},expression:"filter.items.keyword"}})],1),t._v(" "),e("van-pull-refresh",{on:{refresh:function(s){t.onPullDownRefresh()}},model:{value:t.isRefresh,callback:function(s){t.isRefresh=s},expression:"isRefresh"}},[t.records.empty?e("div",{staticClass:"no-data"},[e("img",{attrs:{src:"static/img/order_no_con.png",alt:""}}),t._v(" "),e("p",[t._v("没有符合条件的数据!")])]):e("van-list",{staticClass:"order-list",attrs:{finished:t.records.finished,offset:100,"immediate-check":!1},on:{load:t.onLoad},model:{value:t.records.loading,callback:function(s){t.$set(t.records,"loading",s)},expression:"records.loading"}},[t._l(t.records.data,function(s,i){return e("div",{key:s.id,staticClass:"order-item"},[e("div",{staticClass:"order-title flex-lr"},[e("div",{staticClass:"title flex"},[e("div",{staticClass:"title-img"},[e("img",{attrs:{src:s.avatar,alt:""}})]),t._v(" "),e("div",{staticClass:"title-name"},[t._v(t._s(s.realname))]),t._v(" "),e("div",{staticClass:"gift-type itag itag-primary"},[t._v(t._s(s.card_name))])]),t._v(" "),e("div",{staticClass:"itag",class:{"itag-primary":"生效中"==s.card_status,"itag-danger":"已到期"==s.card_status}},[t._v(t._s(s.card_status))])]),t._v(" "),e("div",{staticClass:"order-detail border-1px-t"},[e("div",{staticClass:"order-info flex"},[e("div",[t._v("购买费用：")]),t._v(" "),e("div",{staticClass:"c-danger"},[t._v("￥"+t._s(s.final_fee))])]),t._v(" "),e("div",{staticClass:"order-info flex"},[e("div",[t._v("购买时间：")]),t._v(" "),e("div",[t._v(t._s(s.paytime_cn))])]),t._v(" "),e("div",{staticClass:"order-info flex"},[e("div",[t._v("支付方式：")]),t._v(" "),e("div",[t._v(t._s(s.pay_type_cn))])]),t._v(" "),e("div",{staticClass:"order-info flex"},[e("div",[t._v("有效期：")]),t._v(" "),e("div",[t._v(t._s(s.starttime_cn)+" ~ "+t._s(s.endtime_cn))])])])])}),t._v(" "),t.records.finished?e("div",{staticClass:"loaded"},[e("div",{staticClass:"loaded-tips"},[t._v("没有更多了")])]):t._e()],2)],1)],1),t._v(" "),t.showPreLoading?e("iloading"):t._e()],1)},staticRenderFns:[]};var l=e("VU/8")(r,d,!1,function(t){e("7YJ5")},null,null);s.default=l.exports},"7YJ5":function(t,s){}});