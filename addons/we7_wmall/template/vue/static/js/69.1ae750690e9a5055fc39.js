webpackJsonp([69],{LN1q:function(t,s,e){"use strict";Object.defineProperty(s,"__esModule",{value:!0});var i=e("Cz8s"),a=e("mzkE"),r={components:{PublicHeader:i.a,PublicFooter:a.a},data:function(){return{showPreLoading:!0,active_tab:0,order:{thumbs:[],category:{},data:{order:{}}},logs:{},log:{},maxid:"",refundmaxid:"",refund_logs:{},menufooter:{},show_location:0}},methods:{onChangeTab:function(t){this.active_tab=t},onChangeStatus:function(t,s){if("cancel"==s)var e={url:"errander/order/cancel?id="+t,confirm:"确定取消订单吗?"};else if("end"==s)e={url:"errander/order/end?id="+t,confirm:"确定已收到商品吗?"};this.util.jspost(e)},onLoad:function(){var t=this;if(!this.id)return this.$toast("订单不存在或已删除"),!1;this.util.request({url:"errander/order/detail",data:{id:this.id,menufooter:1}}).then(function(s){t.showPreLoading=!1;var e=s.data.message;if(e.errno)return t.$toast(e.message),!1;e=e.message,t.order=e.order,t.logs=e.logs,t.deliveryer=e.deliveryer,t.maxid=e.maxid,e.refund_logs&&(t.refund_logs=e.refund_logs,t.refundmaxid=e.refundmaxid),t.show_location=e.show_location,t.menufooter=window.menufooter})}},created:function(){this.query=this.$route.query,this.query&&(this.id=this.query.id)},mounted:function(){this.onLoad()}},l={render:function(){var t=this,s=t.$createElement,e=t._self._c||s;return e("div",{attrs:{id:"paotui-order-detail"}},[e("public-header",{attrs:{title:"订单详情",bgcolor:"#ff2d4b",textcolor:"#fff"}}),t._v(" "),e("public-footer",{attrs:{preLoading:t.showPreLoading,menufooter:t.menufooter}}),t._v(" "),e("div",{staticClass:"content"},[e("van-tabs",{attrs:{swipeable:""},model:{value:t.active_tab,callback:function(s){t.active_tab=s},expression:"active_tab"}},[e("van-tab",{staticClass:"order-detail",attrs:{title:"订单详情"}},[e("div",{staticClass:"order-state border-1px-tb"},[e("div",{staticClass:"order-state-con"},[e("div",{staticClass:"guide"},[e("img",{attrs:{src:"static/img/order_status_service.png",alt:""}})]),t._v(" "),e("div",{staticClass:"order-state-detail"},[e("div",{staticClass:"flex-lr"},[t._v("订单"+t._s(t.order.order_status)),e("span",{staticClass:"pull-right date"},[t._v(t._s(t.order.addtime_cn))])]),t._v(" "),t.log.note?e("div",{staticClass:"tips clearfix"},[t._v(t._s(t.log.note))]):t._e()])]),t._v(" "),t.order.status<3?e("div",{staticClass:"order-btn"},[0==t.order.is_pay?e("router-link",{staticClass:"table-cell  van-hairline--top",attrs:{tag:"div",to:t.util.getUrl({path:"/pages/public/pay",query:{order_id:t.order.id,order_type:"errander"}})}},[t._v("立即支付")]):t._e(),t._v(" "),1==t.order.status?[e("div",{staticClass:"table-cell van-hairline--top",on:{click:function(s){return t.onChangeStatus(t.order.id,"cancel")}}},[t._v("取消订单")])]:2==t.order.status?[1==t.order.delivery_stauts?e("div",{staticClass:"table-cell van-hairline--top",on:{click:function(s){return t.onChangeStatus(t.order.id,"cancel")}}},[t._v("取消订单")]):t._e(),t._v(" "),e("div",{staticClass:"table-cell van-hairline--top",on:{click:function(s){return t.onChangeStatus(t.order.id,"end")}}},[t._v("确认送达")]),t._v(" "),e("div",{staticClass:"table-cell van-hairline--top",on:{click:function(s){return t.util.jsUrl("tel:"+t.deliveryer.mobile)}}},[t._v("联系骑士")])]:t._e(),t._v(" "),t.show_location?e("router-link",{staticClass:"table-cell van-hairline--left van-hairline--top",attrs:{to:t.util.getUrl({path:"/pages/paotui/map",query:{id:t.order.id}})}},[t._v("配送员位置")]):t._e(),t._v(" "),1==t.order.is_refund?e("router-link",{staticClass:"table-cell van-hairline--top",attrs:{to:t.util.getUrl({path:"/pages/paotui/detail",query:{id:t.order.id}})}},[t._v("查看退款")]):t._e()],2):t._e()]),t._v(" "),e("div",{staticClass:"content-block-title"},[t._v("订单明细")]),t._v(" "),e("div",{staticClass:"order-details"},[e("div",{staticClass:"order-details-con border-1px-t "},[e("div",{staticClass:"store-info border-1px-b"},[e("router-link",{staticClass:"external",attrs:{tag:"div",to:t.util.getUrl({path:"/pages/paotui/diy",query:{id:t.order.category.id}})}},[e("img",{attrs:{src:t.order.category.thumb,alt:""}}),t._v(" "),e("span",{staticClass:"store-title"},[t._v(t._s(t.order.category.name))]),t._v(" "),e("span",{staticClass:"icon icon-arrow-right pull-right"})])],1),t._v(" "),e("div",{staticClass:"inner-con"},["buy"==t.order.order_type?e("van-row",{staticClass:"no-gutter"},[e("van-col",{staticClass:"ellipsis",attrs:{span:"12"}},[t._v(t._s(t.order.goods_name))]),t._v(" "),e("van-col",{staticClass:"text-right",attrs:{span:"12"}},[t._v("与配送员结算")])],1):t._e(),t._v(" "),e("van-row",{staticClass:"no-gutter"},[e("van-col",{attrs:{span:"12"}},[t._v("配送费")]),t._v(" "),e("van-col",{staticClass:"text-right",attrs:{span:"12"}},[t._v("¥"+t._s(t.order.delivery_fee))])],1),t._v(" "),e("van-row",{staticClass:"no-gutter"},[e("van-col",{attrs:{span:"20"}},[t._v("小费")]),t._v(" "),e("van-col",{staticClass:"text-right",attrs:{span:"4"}},[t._v("¥"+t._s(t.order.delivery_tips))])],1)],1),t._v(" "),e("div",{staticClass:"inner-con"},[e("van-row",{staticClass:"no-gutter padding-10"},[e("van-col",{staticClass:"text-right color-muted",attrs:{span:"20"}},[t._v("总计")]),t._v(" "),e("van-col",{staticClass:"text-right",attrs:{span:"4"}},[t._v("¥"+t._s(t.order.final_fee))])],1)],1)])]),t._v(" "),"buy"==t.order.order_type?[e("div",{staticClass:"content-block-title"},[t._v("商品信息")]),t._v(" "),e("div",{staticClass:"other-info"},[e("ul",{staticClass:"border-1px-tb"},[e("li",{staticClass:"item-content flex"},[e("div",{staticClass:"item-inner border-1px-b flex-lr"},[e("div",{staticClass:"item-title"},[t._v("订单类型")]),t._v(" "),e("div",{staticClass:"item-after"},[t._v(t._s(t.order.order_type_cn))])])]),t._v(" "),e("li",{staticClass:"item-content flex"},[e("div",{staticClass:"item-inner border-1px-b flex-lr"},[e("div",{staticClass:"item-title"},[t._v("购买商品")]),t._v(" "),e("div",{staticClass:"item-after"},[t._v(t._s(t.order.goods_name))])])]),t._v(" "),e("li",{staticClass:"item-content flex"},[e("div",{staticClass:"item-inner border-1px-b flex-lr"},[e("div",{staticClass:"item-title"},[t._v("购买地址")]),t._v(" "),e("div",{staticClass:"item-after"},[t._v(t._s(t.order.buy_address))])])]),t._v(" "),t.order.thumbs.length>0?e("li",{staticClass:"item-content padding-15-r"},[e("div",{staticClass:"item-inner border-1px-b flex-lr"},[e("div",{staticClass:"item-title"},[t._v("顾客上传的图片")])]),t._v(" "),e("van-row",{attrs:{gutter:"10"}},t._l(t.order.thumbs,function(t,s){return e("van-col",{key:s,staticClass:"goods-img",attrs:{span:"6"}},[e("img",{attrs:{src:t,alt:""}})])}),1)],1):t._e()])])]:[e("div",{staticClass:"content-block-title"},[t._v("物品信息")]),t._v(" "),e("div",{staticClass:"other-info"},[e("ul",{staticClass:"border-1px-tb"},[e("li",{staticClass:"item-content flex"},[e("div",{staticClass:"item-inner border-1px-b flex-lr"},[e("div",{staticClass:"item-title"},[t._v("订单类型")]),t._v(" "),e("div",{staticClass:"item-after"},[t._v(t._s(t.order.order_type_cn))])])]),t._v(" "),e("li",{staticClass:"item-content flex"},[e("div",{staticClass:"item-inner border-1px-b flex-lr"},[e("div",{staticClass:"item-title"},[t._v("物品信息")]),t._v(" "),e("div",{staticClass:"item-after"},[t._v(t._s(t.order.goods_name))])])]),t._v(" "),e("li",{staticClass:"item-content flex"},[e("div",{staticClass:"item-inner border-1px-b flex-lr"},[e("div",{staticClass:"item-title"},[t._v("物品价值")]),t._v(" "),e("div",{staticClass:"item-after"},[t._v(t._s(t.order.goods_price))])])]),t._v(" "),e("li",{staticClass:"item-content flex"},[e("div",{staticClass:"item-inner border-1px-b flex-lr"},[e("div",{staticClass:"item-title"},[t._v("物品重量")]),t._v(" "),e("div",{staticClass:"item-after"},[t._v(t._s(t.order.goods_weight)+"公斤")])])]),t._v(" "),e("li",{staticClass:"item-content flex"},[e("div",{staticClass:"item-inner border-1px-b flex-lr"},[e("div",{staticClass:"item-title"},[t._v("取货地址")]),t._v(" "),e("div",{staticClass:"item-after"},[t._v(t._s(t.order.buy_address))])])]),t._v(" "),e("li",{staticClass:"item-content flex"},[e("div",{staticClass:"item-inner border-1px-b flex-lr"},[e("div",{staticClass:"item-title"},[t._v("联系人")]),t._v(" "),e("div",{staticClass:"item-after"},[t._v(t._s(t.order.buy_username))])])]),t._v(" "),t.order.thumbs.length>0?e("li",{staticClass:"item-content padding-15-r"},[e("div",{staticClass:"item-inner border-1px-b flex-lr"},[e("div",{staticClass:"item-title"},[t._v("顾客上传的图片")])]),t._v(" "),e("van-row",{attrs:{gutter:"10"}},t._l(t.order.thumbs,function(t,s){return e("van-col",{key:s,staticClass:"goods-img",attrs:{span:"6"}},[e("img",{attrs:{src:t,alt:""}})])}),1)],1):t._e()])])],t._v(" "),t.order.data.order?[t._l(t.order.data.order.thumbs,function(s){return t.order.data.order.thumbs?[e("div",{staticClass:"item-inner flex-lr"},[e("div",{staticClass:"content-block-title"},[t._v(t._s(s.title))])]),t._v(" "),e("div",{staticClass:"padding-15-lr padding-15-t padding-5-b bg-default border-1px-tb"},[e("van-row",{attrs:{gutter:"10"}},t._l(s.value,function(i,a){return e("van-col",{key:a,staticClass:"goods-img",attrs:{span:"6"}},[e("div",{staticClass:"img-wrap",on:{click:function(e){return t.util.jsPreviewImage(s.value,a)}}},[e("img",{attrs:{src:i,alt:""}})])])}),1)],1)]:t._e()})]:t._e(),t._v(" "),e("div",{staticClass:"content-block-title"},[t._v("收货地址")]),t._v(" "),e("div",{staticClass:"other-info"},[e("ul",{staticClass:"border-1px-tb"},[e("li",{staticClass:"item-content flex"},[e("div",{staticClass:"item-inner border-1px-b flex-lr"},[e("div",{staticClass:"item-title"},[t._v("收货地址")]),t._v(" "),e("div",{staticClass:"item-after"},[t._v(t._s(t.order.accept_address))])])]),t._v(" "),e("li",{staticClass:"item-content flex"},[e("div",{staticClass:"item-inner border-1px-b flex-lr"},[e("div",{staticClass:"item-title"},[t._v("联系人")]),t._v(" "),e("div",{staticClass:"item-after"},[t._v(t._s(t.order.accept_username))])])])])]),t._v(" "),e("div",{staticClass:"content-block-title"},[t._v("其他信息")]),t._v(" "),e("div",{staticClass:"other-info"},[e("ul",{staticClass:"border-1px-tb"},[t.order.deliveryer_id>0?e("li",{staticClass:"item-content flex"},[e("div",{staticClass:"item-inner border-1px-b flex-lr"},[e("div",{staticClass:"item-title"},[t._v("配送员")]),t._v(" "),e("div",{staticClass:"item-after"},[t._v(t._s(t.deliveryer.title))])])]):t._e(),t._v(" "),e("li",{staticClass:"item-content flex"},[e("div",{staticClass:"item-inner border-1px-b flex-lr"},[e("div",{staticClass:"item-title"},[t._v("配送时间")]),t._v(" "),e("div",{staticClass:"item-after"},[t._v(t._s(t.order.delivery_time))])])]),t._v(" "),e("li",{staticClass:"item-content flex"},[e("div",{staticClass:"item-inner border-1px-b flex-lr"},[e("div",{staticClass:"item-title"},[t._v("订单号")]),t._v(" "),e("div",{staticClass:"item-after"},[t._v(t._s(t.order.order_sn))])])]),t._v(" "),e("li",{staticClass:"item-content flex"},[e("div",{staticClass:"item-inner border-1px-b flex-lr"},[e("div",{staticClass:"item-title"},[t._v("收货码")]),t._v(" "),e("div",{staticClass:"item-after"},[t._v(t._s(t.order.code))])])]),t._v(" "),e("li",{staticClass:"item-content flex"},[e("div",{staticClass:"item-inner border-1px-b flex-lr"},[e("div",{staticClass:"item-title"},[t._v("支付方式")]),t._v(" "),e("div",{staticClass:"item-after"},[t._v(t._s(t.order.pay_type_cn))])])]),t._v(" "),e("li",{staticClass:"item-content flex"},[e("div",{staticClass:"item-inner border-1px-b flex-lr"},[e("div",{staticClass:"item-title"},[t._v("备注")]),t._v(" "),e("div",{staticClass:"item-after"},[t._v(t._s(t.order.note?t.order.note:"无"))])])]),t._v(" "),t.order.data.order?[t._l(t.order.data.order.partData,function(s,i){return t.order.data.order.partData?["multipleChoices"!=s.type?e("li",{staticClass:"item-content flex"},[e("div",{staticClass:"item-inner border-1px-b flex-lr"},[e("div",{staticClass:"item-title"},[t._v(t._s(s.title))]),t._v(" "),e("div",{staticClass:"item-after"},[t._v(t._s(s.value))])])]):e("li",{staticClass:"item-content flex"},[e("div",{staticClass:"item-inner border-1px-b flex-lr"},[e("div",{staticClass:"item-title"},[t._v(t._s(s.title))]),t._v(" "),e("div",{staticClass:"item-after"},[t._l(s.value,function(s){return[t._v("\n\t\t\t\t\t\t\t\t\t\t\t\t"+t._s(s)+"\n\t\t\t\t\t\t\t\t\t\t\t")]})],2)])])]:t._e()}),t._v(" "),t._l(t.order.data.order.extra_fee,function(s,i){return t.order.data.order.extra_fee?[e("li",{staticClass:"item-content flex"},[e("div",{staticClass:"item-inner border-1px-b flex-lr"},[e("div",{staticClass:"item-title"},[t._v(t._s(s.title))]),t._v(" "),e("div",{staticClass:"item-after"},[t._l(s.value,function(s){return[t._v("\n\t\t\t\t\t\t\t\t\t\t\t\t "+t._s(s.name)+"-￥"+t._s(s.fee)+"\n\t\t\t\t\t\t\t\t\t\t\t")]})],2)])])]:t._e()})]:t._e()],2)])],2),t._v(" "),e("van-tab",{staticClass:"order-status",attrs:{title:"订单状态"}},t._l(t.logs,function(s,i){return e("div",{key:i,staticClass:"order-status-item"},[e("div",{staticClass:"guide"},[t.maxid!=i?e("img",{attrs:{src:"static/img/order_status_service_grey.png",alt:""}}):e("img",{attrs:{src:"static/img/order_status_service.png",alt:""}})]),t._v(" "),e("div",{staticClass:"order-status-info"},[e("div",{staticClass:"arrow-left"}),t._v(" "),e("div",{staticClass:"flex-lr"},[t._v(t._s(s.title)),e("span",{staticClass:"time pull-right"},[t._v(t._s(s.addtime))])]),t._v(" "),s.note?e("div",{staticClass:"tips",domProps:{innerHTML:t._s(s.note)}}):t._e()])])}),0),t._v(" "),t.order.refund_status>0?e("van-tab",{staticClass:"order-refund",attrs:{title:"退款详情"}},[e("div",{staticClass:"refund-detail"},[e("van-row",{staticClass:"refund-de-title border-1px-b"},[e("van-col",{attrs:{span:"13"}},[t._v("\n\t\t\t\t\t\t\t退款金额 "),e("span",{staticClass:"color-danger"},[t._v("¥"+t._s(t.order.final_fee))])]),t._v(" "),e("van-col",{attrs:{span:"11"}},[e("span",{staticClass:"refund-status-cn float-right"},[t._v(t._s(t.order.refund_status_cn))])])],1),t._v(" "),e("div",{staticClass:"refund-detail-con"},[e("div",{staticClass:"no-gutter"},[t._v("订单编号:"),e("span",[t._v(t._s(t.order.order_sn))])]),t._v(" "),e("div",{staticClass:"no-gutter"},[t._v("退款周期:"),e("span",[t._v("1-15个工作日")])]),t._v(" "),e("div",{staticClass:"no-gutter"},[t._v("支付方式:"),e("span",[t._v(t._s(t.order.pay_type_cn))])]),t._v(" "),t.order.refund_channel?e("div",{staticClass:"no-gutter"},[t._v("退款方式:"),e("span",[t._v(t._s(t.order.refund_channel_cn))])]):t._e(),t._v(" "),t.order.refund_account?e("div",{staticClass:"no-gutter"},[t._v("退款账户:"),e("span",[t._v(t._s(t.order.refund_account))])]):t._e()])],1),t._v(" "),e("div",{staticClass:"refund-plan"},t._l(t.refund_logs,function(s,i){return e("div",{key:i,staticClass:"order-status-item"},[e("div",{staticClass:"guide"},[i!=t.refundmaxid?e("img",{attrs:{src:"static/img/order_status_service_grey.png",alt:""}}):e("img",{attrs:{src:"static/img/order_status_service.png",alt:""}})]),t._v(" "),e("div",{staticClass:"order-status-info"},[e("div",{staticClass:"arrow-left"}),t._v(" "),e("div",{staticClass:"flex-lr"},[t._v(t._s(s.title)),e("span",{staticClass:"time pull-right"},[t._v(t._s(s.addtime))])]),t._v(" "),s.note?e("div",{staticClass:"tips"},[t._v(t._s(s.note))]):t._e()])])}),0)]):t._e()],1)],1)],1)},staticRenderFns:[]};var n=e("VU/8")(r,l,!1,function(t){e("nPCl")},null,null);s.default=n.exports},nPCl:function(t,s){}});