webpackJsonp([71],{ATG7:function(t,s){},ObZR:function(t,s,i){"use strict";Object.defineProperty(s,"__esModule",{value:!0});var e=i("Cz8s"),n=i("deIj"),r={data:function(){return{isRefresh:!1,showPreLoading:!0,records:{}}},components:{publicHeader:e.a},methods:{onLoad:function(){var t=this;Object(n.a)({vue:this,url:"manage/shop/printer/list",success:function(s){t.isRefresh=!1,t.records=s.records}})},onDeletePrinter:function(t,s){var i=this;i.util.jspost({url:"manage/shop/printer/del",data:{id:t.id},confirm:"确定删除该打印机吗？",success:function(){i.records.splice(s,1)}})},onPullDownRefresh:function(){this.onLoad()}},mounted:function(){this.onLoad()}},a={render:function(){var t=this,s=t.$createElement,i=t._self._c||s;return i("div",{attrs:{id:"printer-list"}},[i("public-header",{attrs:{title:"打印机列表"}},[i("router-link",{staticClass:"addPrinter-btn",attrs:{slot:"right",tag:"div",to:"/pages/printer/post"},slot:"right"},[i("span",{staticClass:"icon icon-add"})])],1),t._v(" "),i("div",{staticClass:"content"},[i("van-pull-refresh",{on:{refresh:function(s){t.onPullDownRefresh()}},model:{value:t.isRefresh,callback:function(s){t.isRefresh=s},expression:"isRefresh"}},[t.records.length>0?i("div",{staticClass:"printer-group"},t._l(t.records,function(s,e){return i("div",{staticClass:"printer-item"},[i("div",{staticClass:"printer-title"},[i("div",{staticClass:"flex-lr"},[i("div",{staticClass:"font-bold flex"},[t._v(t._s(s.name)+" "),i("div",{staticClass:"printer-name"},[t._v(t._s(s.type_cn))])]),t._v(" "),1==s.status?i("div",{staticClass:"itag itag-info"},[t._v("启用")]):0==s.status?i("div",{staticClass:"itag itag-danger"},[t._v("停用")]):t._e()]),t._v(" "),i("div",{staticClass:"font-14 c-gray padding-10-t"},[t._v("工作状态："+t._s(s.status_cn))]),t._v(" "),i("div",{staticClass:"font-14 c-gray padding-10-t"},[t._v("打印联数："+t._s(s.print_nums))])]),t._v(" "),i("div",{staticClass:"border-1px-t btn-group"},[i("router-link",{staticClass:"btn-item bg-info",attrs:{tag:"div",to:t.util.getUrl({path:"/pages/printer/post",query:{id:s.id}})}},[t._v("编辑")]),t._v(" "),i("div",{staticClass:"btn-item bg-default",on:{click:function(i){t.onDeletePrinter(s,e)}}},[t._v("删除")])],1)])})):i("div",{staticClass:"no-data"},[i("img",{attrs:{src:"static/img/order_no_con.png",alt:""}}),t._v(" "),i("p",[t._v("没有符合条件的数据!")])])])],1),t._v(" "),t.showPreLoading?i("iloading"):t._e()],1)},staticRenderFns:[]};var o=i("VU/8")(r,a,!1,function(t){i("ATG7")},null,null);s.default=o.exports}});
//# sourceMappingURL=71.357b24a4661707d398e6.js.map