webpackJsonp([128],{ksKE:function(t,s,i){"use strict";Object.defineProperty(s,"__esModule",{value:!0});var e={data:function(){return{showPreLoading:!0,agreementShow:!1,order:{}}},components:{PublicHeader:i("Cz8s").a},methods:{onChangePopup:function(){this.agreementShow=!this.agreementShow},onLoad:function(){var t=this;this.$route.query.id?(this.id=this.$route.query.id,this.util.request({url:"wmall/order/index/zhunshibao",data:{id:this.id}}).then(function(s){t.showPreLoading=!1;var i=s.data.message;i.errno?t.util.$toast(i.message,t.util.getUrl({path:"pages/order/detail",query:{id:t.id}}),3e3):t.order=i.message.order})):this.$toast("订单不存在或已删除！")}},mounted:function(){this.onLoad()}},a={render:function(){var t=this,s=t.$createElement,i=t._self._c||s;return i("div",{attrs:{id:"order-zhunshibao"}},[i("public-header",{attrs:{title:"准时宝详情"}}),t._v(" "),i("div",{staticClass:"content"},[i("div",{staticClass:"zhunshibao-list"},[i("div",{staticClass:"zhunshibao-item"},[i("div",{staticClass:"zhunshibao-item-left"},[t._v("价格")]),t._v(" "),i("div",{staticClass:"zhunshibao-item-right"},[t._v("¥"+t._s(t.order.zhunshibao_price))])])]),t._v(" "),i("div",{staticClass:"blank"}),t._v(" "),i("div",{staticClass:"zhunshibao-list"},[i("div",{staticClass:"zhunshibao-item van-hairline--bottom"},[i("div",{staticClass:"zhunshibao-item-left"},[t._v("订单号")]),t._v(" "),i("div",{staticClass:"zhunshibao-item-right"},[t._v(t._s(t.order.ordersn))])]),t._v(" "),i("div",{staticClass:"zhunshibao-item van-hairline--bottom"},[i("div",{staticClass:"zhunshibao-item-left"},[t._v("服务状态")]),t._v(" "),i("div",{staticClass:"zhunshibao-item-right"},[t._v(t._s(6==t.order.status?"已退款":"购买成功"))])]),t._v(" "),i("div",{staticClass:"zhunshibao-item van-hairline--bottom align-top"},[i("div",{staticClass:"zhunshibao-item-left"},[t._v("赔付标准")]),t._v(" "),t.order.zhunshibao_tips?i("div",{staticClass:"zhunshibao-item-right"},t._l(t.order.zhunshibao_tips,function(s){return i("div",[t._v(t._s(s))])}),0):t._e()]),t._v(" "),i("div",{staticClass:"zhunshibao-item flex-lr",on:{click:function(s){return t.onChangePopup()}}},[i("div",{staticClass:"zhunshibao-item-left"},[t._v("服务说明")]),t._v(" "),i("div",{staticClass:"icon icon-right c-gray"})])]),t._v(" "),i("div",{staticClass:"blank"}),t._v(" "),i("div",{staticClass:"zhunshibao-list"},[t._m(0),t._v(" "),i("van-steps",{attrs:{direction:"vertical",active:0,"active-color":"#ff2d4b"}},[5==t.order.status?i("van-step",[1==t.order.zhunshibao_status?i("h3",[t._v("订单已送达，本次配送未达到赔付标准")]):2==t.order.zhunshibao_status?i("h3",[t._v("订单已送达，等待赔付"+t._s(t.order.zhunshibao_compensate)+"元")]):3==t.order.zhunshibao_status?i("h3",[t._v("订单已送达，已赔付"+t._s(t.order.zhunshibao_compensate)+"元")]):4==t.order.zhunshibao_status?i("h3",[t._v("订单已送达，达到赔付标准， 获赔"+t._s(t.order.zhunshibao_compensate)+"元，平台设置为已赔付")]):t._e(),t._v(" "),i("p",[t._v(t._s(t.order.endtime_cn))])]):i("van-step",[6==t.order.status?i("h3",[t._v("已退保")]):i("h3",[t._v("准时宝生效中，订单完成后结算")])]),t._v(" "),i("van-step",[i("h3",[t._v("预计送达")]),t._v(" "),i("p",[t._v(t._s(t.order.prredict_time_cn))])])],1)],1)]),t._v(" "),i("van-popup",{staticClass:"agreement-popup",style:{height:"100%"},attrs:{position:"bottom"},model:{value:t.agreementShow,callback:function(s){t.agreementShow=s},expression:"agreementShow"}},[i("van-nav-bar",{staticClass:"border-0px",style:{background:"#ff2d4b",color:"#fff"},attrs:{title:"准时宝服务协议"},on:{"click-left":function(s){return t.onChangePopup()}}},[i("van-icon",{staticClass:"font-20",style:{color:"#fff"},attrs:{slot:"left",name:"left"},slot:"left"})],1),t._v(" "),i("div",{staticClass:"popup-content margin-10",domProps:{innerHTML:t._s(t.order.zhunshibao_agreement)}})],1),t._v(" "),t.showPreLoading?i("iloading"):t._e()],1)},staticRenderFns:[function(){var t=this.$createElement,s=this._self._c||t;return s("div",{staticClass:"zhunshibao-item van-hairline--bottom"},[s("div",{staticClass:"zhunshibao-item-left"},[this._v("配送状态")])])}]};var o=i("VU/8")(e,a,!1,function(t){i("mGCF")},null,null);s.default=o.exports},mGCF:function(t,s){}});