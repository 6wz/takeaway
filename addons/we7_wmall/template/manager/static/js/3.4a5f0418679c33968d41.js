webpackJsonp([3],{"0wiy":function(t,s,i){"use strict";Object.defineProperty(s,"__esModule",{value:!0});var a=i("woOf"),e=i.n(a),n=i("Cz8s"),o=i("mzkE"),d=i("deIj"),c=i("nZVv"),l={components:{publicHeader:n.a,publicFooter:o.a},data:function(){return{isRefresh:!1,filter:{items:{status:"1"}},showPreLoading:!0,records:{page:1,psize:15,loading:!1,finished:!1,empty:!1,data:[]},store:{}}},methods:{onUpdateOrderStatus:function(t,s){Object(c.a)({vue:this,type:s,index:t,order:this.records.data[t]})},onLoad:function(t){var s=this;Object(d.b)({vue:s,force:t,url:"manage/order/takeout/list",recordsName:"orders",success:function(t){s.store=t.store,s.isRefresh=!1}})},onPullDownRefresh:function(){this.onLoad(!0)},onToggleStatus:function(t){t=parseInt(t),this.filter.items.status!=t&&(this.filter.items.status=t,this.onLoad(!0))},onToggleGoodsShow:function(t){var s=this;this.$nextTick().then(function(){s.records.data[t].showGoods=!s.records.data[t].showGoods,s.records=e()({},s.records)})},onPushUU:function(t,s){if(!s)return!1;var i=this;Object(d.c)({vue:i,url:"manage/order/takeout/push_uupaotui",data:{id:s},success:function(t){Object(d.c)({vue:i,url:"manage/order/takeout/push_uupaotui",confirm:t.tips,data:{id:t.id,push:1}})}})},onCopy:function(t){this.util.$toast("复制成功")}},mounted:function(){this.onLoad(),this.util.imap(),this.util.icloudapi()},created:function(){this.query=this.$route.query,this.query&&this.query.status&&(this.filter.items.status=this.query.status)}},r={render:function(){var t=this,s=t.$createElement,i=t._self._c||s;return i("div",{attrs:{id:"order-list"}},[i("public-header",{attrs:{title:"订单管理"}}),t._v(" "),i("public-footer"),t._v(" "),i("div",{staticClass:"content"},[i("div",{staticClass:"tabs flex-lr"},[i("div",{staticClass:"tabs-item",class:{active:1==t.filter.items.status},on:{click:function(s){t.onToggleStatus(1)}}},[i("div",{staticClass:"mark"},[t._v("新")]),t._v(" "),i("div",{staticClass:"title"},[t._v("待处理")])]),t._v(" "),i("div",{staticClass:"tabs-item",class:{active:2==t.filter.items.status},on:{click:function(s){t.onToggleStatus(2)}}},[i("div",{staticClass:"mark"},[t._v("接")]),t._v(" "),i("div",{staticClass:"title"},[t._v("处理中")])]),t._v(" "),i("div",{staticClass:"tabs-item",class:{active:3==t.filter.items.status},on:{click:function(s){t.onToggleStatus(3)}}},[i("div",{staticClass:"mark"},[t._v("待")]),t._v(" "),i("div",{staticClass:"title"},[t._v("待配送")])]),t._v(" "),i("div",{staticClass:"tabs-item",class:{active:4==t.filter.items.status},on:{click:function(s){t.onToggleStatus(4)}}},[i("div",{staticClass:"mark"},[t._v("送")]),t._v(" "),i("div",{staticClass:"title"},[t._v("配送中")])]),t._v(" "),i("div",{staticClass:"tabs-item",class:{active:5==t.filter.items.status},on:{click:function(s){t.onToggleStatus(5)}}},[i("div",{staticClass:"mark"},[t._v("完")]),t._v(" "),i("div",{staticClass:"title"},[t._v("已完成")])])]),t._v(" "),i("van-pull-refresh",{on:{refresh:function(s){t.onPullDownRefresh()}},model:{value:t.isRefresh,callback:function(s){t.isRefresh=s},expression:"isRefresh"}},[t.records.empty?i("div",{staticClass:"no-data"},[i("img",{attrs:{src:"static/img/order_no_con.png",alt:""}}),t._v(" "),i("p",[t._v("暂无数据")])]):i("van-list",{staticClass:"order-list padding-10 ",attrs:{finished:t.records.finished,offset:100,"immediate-check":!1},on:{load:t.onLoad},model:{value:t.records.loading,callback:function(s){t.$set(t.records,"loading",s)},expression:"records.loading"}},t._l(t.records.data,function(s,a){return i("div",{key:s.id,staticClass:"order-item bg-default font-14"},[i("div",{staticClass:"order-nt bg-gray flex-lr padding-10-tb padding-10-r "},[i("div",{staticClass:"number-time flex"},[i("div",{staticClass:"number"},[t._v(t._s(s.serial_sn))]),t._v(" "),i("div",{staticClass:"c-info"},[t._v(t._s(s.delivery_time))])]),t._v(" "),i("div",[t._v(t._s(s.order_status_cn))])]),t._v(" "),i("div",{staticClass:"padding-10-lr padding-5-b"},[i("div",{staticClass:"flex-lr padding-10-t"},[i("div",{staticClass:"font-bold font-18"},[t._v(t._s(s.username)+"("+t._s(s.sex)+")")]),t._v(" "),s.location_x&&s.location_y?i("div",{staticClass:"icon icon-locationfill",on:{click:function(i){t.util.jsLocation({lat:s.location_x,lng:s.location_y,address:s.address})}}}):t._e()]),t._v(" "),i("div",{staticClass:"flex c-info margin-5-t",on:{click:function(i){t.util.jsTel(s.mobile)}}},[i("div",{staticClass:"icon icon-telephone"}),t._v(" "),i("div",{staticClass:"margin-5-l"},[t._v(t._s(s.mobile))])]),t._v(" "),i("div",{staticClass:"c-gray flex margin-5-t"},[i("div",{staticClass:"accept-address ellipsis"},[t._v(t._s(s.address))]),t._v(" "),s.distance>0?[i("div",{staticClass:"padding-10-lr"},[t._v("|")]),t._v(" "),i("div",[t._v(t._s(s.distance)+"km")])]:t._e()],2)]),t._v(" "),i("div",{staticClass:"divide"},[i("div",{staticClass:"divide-line"})]),t._v(" "),i("div",{staticClass:"goods-info "},[i("div",{staticClass:"flex-lr padding-10-lr padding-5-t padding-10-b"},[i("div",{staticClass:"font-18 font-bold"},[t._v("商品")]),t._v(" "),i("div",{staticClass:"c-info flex goods-show",on:{click:function(s){t.onToggleGoodsShow(a)}}},[i("span",{staticClass:"margin-5-r"},[t._v("展开")]),t._v(" "),i("i",{staticClass:"icon icon-arrow-down"})])]),t._v(" "),s.showGoods?[i("van-row",{staticClass:"padding-10 "},[i("van-col",{staticClass:"c-danger",attrs:{span:"3"}},[t._v("备注:")]),t._v(" "),i("van-col",{staticClass:"line-12",attrs:{span:"21"}},[t._v(t._s(s.note?s.note:"无"))])],1),t._v(" "),i("div",{staticClass:"goods-list"},[t._l(s.goods,function(s){return i("van-row",{key:s.goods_id,staticClass:"goods-item"},[i("van-col",{attrs:{span:"16"}},[t._v(t._s(s.goods_title))]),t._v(" "),i("van-col",{staticClass:"c-danger",attrs:{span:"4"}},[t._v("x"+t._s(s.goods_num))]),t._v(" "),i("van-col",{staticClass:"text-right",attrs:{span:"4"}},[t._v("¥"+t._s(s.goods_price))])],1)}),t._v(" "),i("div",{staticClass:"other-fee flex-lr"},[i("div",[t._v("餐盒费")]),t._v(" "),i("div",[t._v("¥"+t._s(s.box_price))])]),t._v(" "),i("div",{staticClass:"other-fee flex-lr"},[i("div",[t._v("包装费")]),t._v(" "),i("div",[t._v("¥"+t._s(s.pack_fee))])]),t._v(" "),i("div",{staticClass:"other-fee flex-lr"},[i("div",[t._v("配送费")]),t._v(" "),i("div",[t._v("¥"+t._s(s.delivery_fee))])])],2),t._v(" "),i("div",{staticClass:"padding-10-lr"},[i("div",{staticClass:"padding-10-tb van-hairline--bottom flex-lr font-16 "},[i("div",{staticClass:"font-bold"},[t._v("小计")]),t._v(" "),i("div",{staticClass:"font-bold"},[t._v("¥"+t._s(s.total_fee))])])])]:t._e(),t._v(" "),i("div",{staticClass:"padding-10-lr padding-10-t padding-5-b"},[i("div",{staticClass:"flex-lr "},[i("div",{staticClass:"font-18 font-bold"},[t._v("本单预计收入")]),t._v(" "),i("div",{staticClass:"font-16 c-danger font-bold"},[t._v("¥"+t._s(s.store_final_fee))])]),t._v(" "),i("div",{staticClass:"margin-10-t flex"},[i("span",{staticClass:"c-gray margin-10-r"},[t._v("本单顾客实际支付:")]),t._v(" "),i("span",{staticClass:"c-danger"},[t._v("¥"+t._s(s.final_fee))])])])],2),t._v(" "),i("div",{staticClass:"divide"},[i("div",{staticClass:"divide-line"})]),t._v(" "),i("div",{staticClass:" action"},[1==s.status?[i("div",{staticClass:"action-item bg-info",on:{click:function(s){t.onUpdateOrderStatus(a,"handle")}}},[t._v("确认")]),t._v(" "),i("div",{staticClass:"action-item bg-danger",on:{click:function(s){t.onUpdateOrderStatus(a,"cancel")}}},[t._v("取消")])]:2==s.status||3==s.status?[1==s.order_type?[i("div",{staticClass:"action-item bg-info",on:{click:function(s){t.onUpdateOrderStatus(a,"notify_deliveryer_collect")}}},[t._v("通知配送")]),t._v(" "),1==s.delivery_type?[i("div",{staticClass:"action-item bg-info",on:{click:function(s){t.onUpdateOrderStatus(a,"direct_deliveryer")}}},[t._v("指定配送员")]),t._v(" "),i("div",{staticClass:"action-item bg-info",on:{click:function(s){t.onUpdateOrderStatus(a,"delivery_ing")}}},[t._v("设为配送中")])]:t._e(),t._v(" "),1==t.store.data.uupaotui.status?i("div",{staticClass:"action-item bg-info",on:{click:function(i){t.onPushUU(a,s.id)}}},[t._v("UU配送")]):t._e()]:2==s.order_type?[i("div",{staticClass:"action-item bg-info",on:{click:function(s){t.onUpdateOrderStatus(a,"end")}}},[t._v("已自提")])]:s.order_type>=3?[i("div",{staticClass:"action-item bg-info",on:{click:function(s){t.onUpdateOrderStatus(a,"end")}}},[t._v("完成")])]:t._e()]:4==s.status?[i("div",{staticClass:"action-item bg-info",on:{click:function(s){t.onUpdateOrderStatus(a,"end")}}},[t._v("完成")])]:1==s.delivery_type&&s.status>1&&s.status<5&&1==s.order_type?[i("div",{staticClass:"action-item bg-info",on:{click:function(s){t.onUpdateOrderStatus(a,"end")}}},[t._v("完成")])]:t._e(),t._v(" "),i("router-link",{staticClass:"action-item",attrs:{tag:"div",to:t.util.getUrl({path:"pages/order/detail",query:{id:s.id}})}},[t._v("详情")])],2),t._v(" "),i("div",{staticClass:"divide"},[i("div",{staticClass:"divide-line"})]),t._v(" "),i("div",{staticClass:"order-info flex-lr padding-10 bg-gray"},[i("div",{staticClass:"c-gray"},[i("div",{staticClass:"flex"},[i("div",{staticClass:"margin-10-r"},[t._v("下单时间:")]),t._v(" "),i("div",[t._v(t._s(s.addtime_cn))])]),t._v(" "),i("div",{directives:[{name:"clipboard",rawName:"v-clipboard:copy",value:s.ordersn,expression:"item.ordersn",arg:"copy"},{name:"clipboard",rawName:"v-clipboard:success",value:t.onCopy,expression:"onCopy",arg:"success"}],staticClass:"flex margin-10-t"},[i("div",{staticClass:"margin-10-r"},[t._v("单号:")]),t._v(" "),i("div",[t._v(t._s(s.ordersn))]),t._v(" "),i("div",{staticClass:"margin-10-l c-default"},[t._v("复制")])])]),t._v(" "),i("div",{staticClass:"flex-tb-center",on:{click:function(s){t.onUpdateOrderStatus(a,"print")}}},[i("div",{staticClass:"icon icon-print font-20"}),t._v(" "),i("div",{staticClass:"margin-5-t"},[t._v("打印"+t._s(s.print_nums>0?s.print_nums:""))])])]),t._v(" "),1==s.is_pay&&"delivery"==s.pay_type?i("div",{staticClass:"pay-status delivery-pay"}):1==s.is_pay&&"delivery"!=s.pay_type?i("div",{staticClass:"pay-status have-pay"}):t._e()])}))],1)],1),t._v(" "),t.showPreLoading?i("iloading"):t._e()],1)},staticRenderFns:[]};var v=i("VU/8")(l,r,!1,function(t){i("NMXM")},null,null);s.default=v.exports},NMXM:function(t,s){}});
//# sourceMappingURL=3.4a5f0418679c33968d41.js.map