webpackJsonp([41],{nZ44:function(t,s,i){"use strict";Object.defineProperty(s,"__esModule",{value:!0});var e=i("Cz8s"),a=i("deIj"),n={data:function(){return{records:{page:1,psize:15,loading:!1,finished:!1,empty:!1,data:[]},isRefresh:!1,showPreLoading:!0,filter:{items:{status:"0"}}}},components:{publicHeader:e.a},methods:{onLoad:function(t){Object(a.b)({vue:this,force:t,url:"plateform/merchant/settle/list"})},onPullDownRefresh:function(){this.onLoad(!0)},onToggleStatus:function(t){t=parseInt(t),this.filter.items.status!=t&&(this.filter.items.status=t)},onChangeStatus:function(t,s,i){var e=this;e.util.jspost({url:"plateform/merchant/settle/audit",data:{id:t.id,status:s},confirm:"确定修改审核状态吗？",success:function(){e.records.data[i].status=s}})}},mounted:function(){this.onLoad()},watch:{filter:{handler:function(t,s){this.onLoad(!0)},deep:!0}}},l={render:function(){var t=this,s=t.$createElement,i=t._self._c||s;return i("div",{attrs:{id:"merchant-settle"}},[i("public-header",{attrs:{title:"入驻列表"}}),t._v(" "),i("div",{staticClass:"content"},[i("div",{staticClass:"wrap-search wrap-search-input"},[i("div",{staticClass:"tab-group flex-lr border-1px-b"},[i("div",{staticClass:"tab-item",class:{active:0==t.filter.items.status},on:{click:function(s){t.onToggleStatus(0)}}},[t._v("全部")]),t._v(" "),i("div",{staticClass:"tab-item",class:{active:2==t.filter.items.status},on:{click:function(s){t.onToggleStatus(2)}}},[t._v("待审核")]),t._v(" "),i("div",{staticClass:"tab-item",class:{active:1==t.filter.items.status},on:{click:function(s){t.onToggleStatus(1)}}},[t._v("审核通过")]),t._v(" "),i("div",{staticClass:"tab-item",class:{active:3==t.filter.items.status},on:{click:function(s){t.onToggleStatus(3)}}},[t._v("审核未通过")])]),t._v(" "),i("van-search",{attrs:{placeholder:"请输入商户名称"},model:{value:t.filter.items.keyword,callback:function(s){t.$set(t.filter.items,"keyword",s)},expression:"filter.items.keyword"}})],1),t._v(" "),i("van-pull-refresh",{on:{refresh:function(s){t.onPullDownRefresh()}},model:{value:t.isRefresh,callback:function(s){t.isRefresh=s},expression:"isRefresh"}},[t.records.empty?i("div",{staticClass:"no-data"},[i("img",{attrs:{src:"static/img/order_no_con.png",alt:""}}),t._v(" "),i("p",[t._v("没有符合条件的数据!")])]):i("van-list",{staticClass:"settle-list",attrs:{finished:t.records.finished,offset:100,"immediate-check":!1},on:{load:t.onLoad},model:{value:t.records.loading,callback:function(s){t.$set(t.records,"loading",s)},expression:"records.loading"}},[t._l(t.records.data,function(s,e){return i("div",{key:s.id,staticClass:"settle-item"},[i("div",{staticClass:"padding-10"},[i("div",{staticClass:"flex-lr padding-10-b"},[i("div",{staticClass:"font-bold"},[t._v(t._s(s.title))]),t._v(" "),1==s.status?i("div",{staticClass:"itag itag-primary"},[t._v("审核通过")]):2==s.status?i("div",{staticClass:"itag itag-danger"},[t._v("待审核")]):3==s.status?i("div",{staticClass:"itag itag-disabled"},[t._v("审核未通过")]):4==s.status?i("div",{staticClass:"itag"},[t._v("回收站")]):t._e()]),t._v(" "),i("div",{staticClass:"settle-info flex"},[i("div",[t._v("申请人："+t._s(s.user.title))])]),t._v(" "),i("div",{staticClass:"settle-info flex"},[i("div",[t._v("联系电话："+t._s(s.user.mobile))])]),t._v(" "),i("div",{staticClass:"settle-info flex"},[i("div",[t._v("商户地址："+t._s(s.address))])]),t._v(" "),i("div",{staticClass:"settle-info flex"},[i("div",[t._v("申请时间："+t._s(s.addtime_cn))])])]),t._v(" "),i("div",{staticClass:"border-1px-t btn-group"},[3==s.status||4==s.status?i("div",{staticClass:"btn-item bg-info",on:{click:function(i){t.onChangeStatus(s,1,e)}}},[t._v("审核通过")]):t._e(),t._v(" "),1==s.status||4==s.status?i("div",{staticClass:"btn-item bg-danger",on:{click:function(i){t.onChangeStatus(s,3,e)}}},[t._v("审核未通过")]):t._e(),t._v(" "),i("router-link",{staticClass:"btn-item bg-primary",attrs:{tag:"div",to:t.util.getUrl({path:"/pages/merchant/store/index",query:{id:s.id}})}},[t._v("编辑")])],1)])}),t._v(" "),t.records.finished?i("div",{staticClass:"loaded"},[i("div",{staticClass:"loaded-tips"},[t._v("没有更多了")])]):t._e()],2)],1)],1),t._v(" "),t.showPreLoading?i("iloading"):t._e()],1)},staticRenderFns:[]};var o=i("VU/8")(n,l,!1,function(t){i("oos3")},null,null);s.default=o.exports},oos3:function(t,s){}});
//# sourceMappingURL=41.fb434ddbfc2b484f20af.js.map