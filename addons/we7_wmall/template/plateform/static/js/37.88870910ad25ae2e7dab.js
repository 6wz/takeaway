webpackJsonp([37],{d8Wt:function(t,s){},zTts:function(t,s,e){"use strict";Object.defineProperty(s,"__esModule",{value:!0});var a=e("Cz8s"),i=e("deIj"),n={data:function(){return{records:{page:1,psize:15,loading:!1,finished:!1,empty:!1,data:[]},isRefresh:!1,showPreLoading:!0,filter:{items:{}}}},components:{publicHeader:a.a},methods:{onLoad:function(t){Object(i.b)({vue:this,force:t,url:"plateform/agent/agent/list"})},onChangeDelete:function(t,s){var e=this;e.util.jspost({url:"plateform/agent/agent/del",data:{id:t.id},confirm:"确定删除代理吗？",success:function(){e.records.data.splice(s,1)}})},onChangeStatus:function(t,s,e){var a=this;a.util.jspost({url:"plateform/agent/agent/status",data:{id:t.id,status:s},confirm:"确定修改代理状态？",success:function(){a.records.data[e].status=s}})},onPullDownRefresh:function(){this.onLoad(!0)}},mounted:function(){this.onLoad()},watch:{filter:{handler:function(t,s){this.onLoad(!0)},deep:!0}}},o={render:function(){var t=this,s=t.$createElement,e=t._self._c||s;return e("div",{attrs:{id:"agent-agent"}},[e("public-header",{attrs:{title:"代理列表"}}),t._v(" "),e("div",{staticClass:"content"},[e("div",{staticClass:"wrap-search wrap-search-notab"},[e("van-search",{staticClass:"padding-10",attrs:{placeholder:"请输入代理名称或代理区域"},model:{value:t.filter.items.keyword,callback:function(s){t.$set(t.filter.items,"keyword",s)},expression:"filter.items.keyword"}})],1),t._v(" "),e("van-pull-refresh",{on:{refresh:function(s){t.onPullDownRefresh()}},model:{value:t.isRefresh,callback:function(s){t.isRefresh=s},expression:"isRefresh"}},[t.records.empty?e("div",{staticClass:"no-data"},[e("img",{attrs:{src:"static/img/order_no_con.png",alt:""}}),t._v(" "),e("p",[t._v("没有符合条件的数据!")])]):e("van-list",{staticClass:"agent-list",attrs:{finished:t.records.finished,offset:100,"immediate-check":!1},on:{load:t.onLoad},model:{value:t.records.loading,callback:function(s){t.$set(t.records,"loading",s)},expression:"records.loading"}},[t._l(t.records.data,function(s,a){return e("div",{key:s.id,staticClass:"agent-item"},[e("div",{staticClass:"agent-title flex-lr"},[e("div",{staticClass:"title flex"},[e("div",{staticClass:"title-name"},[t._v(t._s(s.title))]),t._v(" "),e("i",{staticClass:"icon icon-locationfill c-danger"}),t._v(" "),e("span",{staticClass:"font-12 c-default"},[t._v(t._s(s.area))])]),t._v(" "),1==s.status?e("div",{staticClass:"itag itag-danger"},[t._v("启用中")]):0==s.status?e("div",{staticClass:"itag itag-disabled"},[t._v("已停用")]):t._e()]),t._v(" "),e("div",{staticClass:"agent-detail border-1px-t"},[e("div",{staticClass:"agent-info flex"},[e("div",[t._v("账户余额：")]),t._v(" "),e("div",{staticClass:"c-danger"},[t._v("￥"+t._s(s.amount))])]),t._v(" "),e("div",{staticClass:"agent-info flex"},[e("div",[t._v("真实姓名：")]),t._v(" "),e("div",[t._v(t._s(s.realname))])]),t._v(" "),e("div",{staticClass:"agent-info flex"},[e("div",[t._v("联系方式：")]),t._v(" "),e("div",[t._v(t._s(s.mobile))])])]),t._v(" "),e("div",{staticClass:"border-1px-t btn-group"},[0==s.status?e("div",{staticClass:"btn-item bg-primary",on:{click:function(e){t.onChangeStatus(s,1,a)}}},[t._v("开启代理")]):t._e(),t._v(" "),1==s.status?e("div",{staticClass:"btn-item bg-danger",on:{click:function(e){t.onChangeStatus(s,0,a)}}},[t._v("关闭代理")]):t._e(),t._v(" "),e("div",{staticClass:"btn-item bg-default",on:{click:function(e){t.onChangeDelete(s,a)}}},[t._v("删除")])])])}),t._v(" "),t.records.finished?e("div",{staticClass:"loaded"},[e("div",{staticClass:"loaded-tips"},[t._v("没有更多了")])]):t._e()],2)],1)],1),t._v(" "),t.showPreLoading?e("iloading"):t._e()],1)},staticRenderFns:[]};var l=e("VU/8")(n,o,!1,function(t){e("d8Wt")},null,null);s.default=l.exports}});
//# sourceMappingURL=37.88870910ad25ae2e7dab.js.map