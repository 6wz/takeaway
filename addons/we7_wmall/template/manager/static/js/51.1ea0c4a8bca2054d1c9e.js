webpackJsonp([51],{"362D":function(t,s,e){"use strict";Object.defineProperty(s,"__esModule",{value:!0});var a=e("Cz8s"),i=e("deIj"),n={data:function(){return{records:{page:1,psize:15,loading:!1,finished:!1,empty:!1,data:[]},isRefresh:!1,filter:{items:{status:"0"}},showPreLoading:!0}},components:{publicHeader:a.a},methods:{onLoad:function(t){Object(i.b)({vue:this,force:t,url:"manage/finance/getcashRecord/list",recordsName:"record"})},onPullDownRefresh:function(){this.onLoad(!0)},onToggleStatus:function(t){t=parseInt(t),this.filter.items.status!=t&&(this.filter.items.status=t)}},mounted:function(){this.onLoad()},watch:{filter:{handler:function(t,s){this.onLoad(!0)},deep:!0}}},o={render:function(){var t=this,s=t.$createElement,e=t._self._c||s;return e("div",{attrs:{id:"store-getcash"}},[e("public-header",{attrs:{title:"提现申请"}}),t._v(" "),e("div",{staticClass:"content"},[e("div",{staticClass:"wrap-search"},[e("div",{staticClass:"tab-group flex-lr border-1px-b"},[e("div",{staticClass:"tab-item",class:{active:0==t.filter.items.status},on:{click:function(s){t.onToggleStatus(0)}}},[t._v("全部")]),t._v(" "),e("div",{staticClass:"tab-item",class:{active:2==t.filter.items.status},on:{click:function(s){t.onToggleStatus(2)}}},[t._v("申请中")]),t._v(" "),e("div",{staticClass:"tab-item",class:{active:1==t.filter.items.status},on:{click:function(s){t.onToggleStatus(1)}}},[t._v("提现成功")]),t._v(" "),e("div",{staticClass:"tab-item",class:{active:3==t.filter.items.status},on:{click:function(s){t.onToggleStatus(3)}}},[t._v("撤销")])])]),t._v(" "),e("van-pull-refresh",{on:{refresh:function(s){t.onPullDownRefresh()}},model:{value:t.isRefresh,callback:function(s){t.isRefresh=s},expression:"isRefresh"}},[t.records.empty?e("div",{staticClass:"no-data"},[e("img",{attrs:{src:"static/img/order_no_con.png",alt:""}}),t._v(" "),e("p",[t._v("没有符合条件的数据!")])]):e("van-list",{staticClass:"getcash-list",attrs:{finished:t.records.finished,offset:100,"immediate-check":!1},on:{load:t.onLoad},model:{value:t.records.loading,callback:function(s){t.$set(t.records,"loading",s)},expression:"records.loading"}},[t._l(t.records.data,function(s,a){return e("div",{key:s.id,staticClass:"getcash-item border-1px-b"},[e("router-link",{staticClass:"padding-10",attrs:{tag:"div",to:t.util.getUrl({path:"/pages/finance/getcashRecordDetail",query:{id:s.id}})}},[e("div",{staticClass:"font-14 padding-10-b flex-lr"},[e("div",{staticClass:"font-bold c-default"},[t._v(t._s(s.status_cn))]),t._v(" "),e("div",{staticClass:"font-bold",class:{"c-primary":1==s.status,"c-danger":1!=s.status}},[t._v(t._s(s.get_fee))])]),t._v(" "),e("div",{staticClass:"font-14 flex-lr"},[e("div",{staticClass:"c-gray"},[t._v(t._s(s.addtime))]),t._v(" "),e("div",{staticClass:"c-gray"},[t._v("手续费：￥"+t._s(s.take_fee))])])])],1)}),t._v(" "),t.records.finished?e("div",{staticClass:"loaded"},[e("div",{staticClass:"loaded-tips"},[t._v("没有更多了")])]):t._e()],2)],1)],1),t._v(" "),t.showPreLoading?e("iloading"):t._e()],1)},staticRenderFns:[]};var c=e("VU/8")(n,o,!1,function(t){e("UKq2")},null,null);s.default=c.exports},UKq2:function(t,s){}});
//# sourceMappingURL=51.1ea0c4a8bca2054d1c9e.js.map