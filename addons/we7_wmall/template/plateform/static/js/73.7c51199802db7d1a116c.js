webpackJsonp([73],{D5no:function(t,s,i){"use strict";Object.defineProperty(s,"__esModule",{value:!0});var a=i("Cz8s"),e=i("deIj"),n={data:function(){return{records:{page:1,psize:15,loading:!1,finished:!1,empty:!1,data:[]},showPreLoading:!0,isRefresh:!1,filter:{items:{status:"-1"}}}},components:{publicHeader:a.a},methods:{onLoad:function(t){Object(e.b)({vue:this,force:t,url:"plateform/merchant/activity/list"})},onPullDownRefresh:function(){this.onLoad(!0)},onToggleActivity:function(t,s){var i=this;i.util.jspost({url:"plateform/merchant/activity/del",data:{id:t.id},confirm:"确定撤销商户活动吗？",success:function(){i.records.data.splice(s,1)}})},onToggleStatus:function(t){t=parseInt(t),this.filter.items.status!=t&&(this.filter.items.status=t)}},mounted:function(){this.onLoad()},watch:{filter:{handler:function(t,s){this.onLoad(!0)},deep:!0}}},c={render:function(){var t=this,s=t.$createElement,i=t._self._c||s;return i("div",{attrs:{id:"activity-list"}},[i("public-header",{attrs:{title:"商户活动"}}),t._v(" "),i("div",{staticClass:"content"},[i("div",{staticClass:"wrap-search wrap-search-input"},[i("div",{staticClass:"tab-group flex-lr border-1px-b"},[i("div",{staticClass:"tab-item",class:{active:-1==t.filter.items.status},on:{click:function(s){t.onToggleStatus(-1)}}},[t._v("全部")]),t._v(" "),i("div",{staticClass:"tab-item",class:{active:1==t.filter.items.status},on:{click:function(s){t.onToggleStatus(1)}}},[t._v("进行中")]),t._v(" "),i("div",{staticClass:"tab-item",class:{active:2==t.filter.items.status},on:{click:function(s){t.onToggleStatus(2)}}},[t._v("待生效")]),t._v(" "),i("div",{staticClass:"tab-item",class:{active:0==t.filter.items.status},on:{click:function(s){t.onToggleStatus(0)}}},[t._v("已结束")])]),t._v(" "),i("van-search",{staticClass:"padding-10",attrs:{placeholder:"请输入店铺名称"},model:{value:t.filter.items.keyword,callback:function(s){t.$set(t.filter.items,"keyword",s)},expression:"filter.items.keyword"}})],1),t._v(" "),i("van-pull-refresh",{on:{refresh:function(s){t.onPullDownRefresh()}},model:{value:t.isRefresh,callback:function(s){t.isRefresh=s},expression:"isRefresh"}},[t.records.empty?i("div",{staticClass:"no-data"},[i("img",{attrs:{src:"static/img/order_no_con.png",alt:""}}),t._v(" "),i("p",[t._v("暂无商户活动记录!")])]):i("van-list",{staticClass:"actitity-list",attrs:{finished:t.records.finished,offset:100,"immediate-check":!1},on:{load:t.onLoad},model:{value:t.records.loading,callback:function(s){t.$set(t.records,"loading",s)},expression:"records.loading"}},[t._l(t.records.data,function(s,a){return i("div",{key:s.id,staticClass:"activity-item margin-10-b"},[i("div",{staticClass:"padding-10"},[i("div",{staticClass:"flex-lr"},[i("div",{staticClass:"flex"},[i("div",{staticClass:"store-name"},[t._v(t._s(s.store_title))]),t._v(" "),i("div",{staticClass:"activity-type itag itag-primary"},[t._v(t._s(s.type_cn))])]),t._v(" "),1==s.status?i("div",{staticClass:"itag itag-primary"},[t._v("进行中")]):2==s.status?i("div",{staticClass:"itag itag-danger"},[t._v("待生效")]):0==s.status?i("div",{staticClass:"itag itag-disabled"},[t._v("已结束")]):t._e()]),t._v(" "),i("div",{staticClass:"padding-10-t"},[i("div",{staticClass:"activities c-gray"},[t._v("活动内容："),i("span",[t._v(t._s(s.title))])]),t._v(" "),i("div",{staticClass:"font-15 c-gray"},[t._v("活动时间："),i("span",[t._v(t._s(s.starttime_cn)+"~"+t._s(s.endtime_cn))])])])]),t._v(" "),i("div",{staticClass:"btn-group border-1px-t"},[i("div",{staticClass:"btn-item",on:{click:function(i){t.onToggleActivity(s,a)}}},[t._v("撤销")])])])}),t._v(" "),t.records.finished?i("div",{staticClass:"loaded"},[i("div",{staticClass:"loaded-tips"},[t._v("没有更多了")])]):t._e()],2)],1)],1),t._v(" "),t.showPreLoading?i("iloading"):t._e()],1)},staticRenderFns:[]};var l=i("VU/8")(n,c,!1,function(t){i("ygCW")},null,null);s.default=l.exports},ygCW:function(t,s){}});
//# sourceMappingURL=73.7c51199802db7d1a116c.js.map