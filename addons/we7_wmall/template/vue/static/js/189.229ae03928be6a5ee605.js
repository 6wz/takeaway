webpackJsonp([189],{Ez0X:function(t,a,e){"use strict";Object.defineProperty(a,"__esModule",{value:!0});var s={data:function(){return{paytype:"alipay",card:{},cards:[],num:0,showPreLoading:!0}},components:{PublicHeader:e("Cz8s").a},methods:{onLoad:function(){var t=this;this.util.request({url:"deliveryCard/apply/index"}).then(function(a){t.showPreLoading=!1;var e=a.data.message;if(e.errno)return t.util.$toast(e.message),!1;e=e.message,t.cards=e,t.card=e[0]})},onChooseCard:function(t){this.card=this.cards[t],this.num=t},onSubmit:function(){var t=this;this.util.request({url:"deliveryCard/apply/pay1",data:{setmeal_id:this.card.id}}).then(function(a){var e=a.data.message;if(e.errno)return t.$toast(e.message),!1;var s=e.message;t.$router.replace(t.util.getUrl({path:"/pages/public/pay?order_id="+s+"&order_type=deliveryCard"}))})}},mounted:function(){this.onLoad()}},i={render:function(){var t=this,a=t.$createElement,e=t._self._c||a;return e("div",{attrs:{id:"deliveryCard-apply"}},[e("public-header",{attrs:{title:"购买配送会员卡"}}),t._v(" "),e("div",{staticClass:"content"},[e("div",{staticClass:"block-title van-hairline--bottom"},[t._v("会员选择")]),t._v(" "),e("div",{staticClass:"row setmeal-list"},t._l(t.cards,function(a,s){return e("div",{staticClass:"col-33 setmeal-item ",class:{active:t.num==s},on:{click:function(a){return t.onChooseCard(s)}}},[e("span",{staticClass:"money"},[t._v(t._s(a.price)+"元")]),t._v(" "),e("span",{staticClass:"name"},[t._v(t._s(a.title))])])}),0),t._v(" "),e("div",{staticClass:"block-info"},[e("div",{staticClass:"van-hairline--top"},[t._v("当前选择会员有效期为"),e("span",[t._v(t._s(t.card.starttime))]),t._v("至"),e("span",{attrs:{id:"setmeal-endtime"}},[t._v(t._s(t.card.endtime))])])]),t._v(" "),e("div",{staticClass:"list-block"},[e("van-cell-group",[e("van-cell",[e("template",{slot:"title"},[e("span",{staticClass:"item-icon"}),t._v(" "),e("span",{staticClass:"item-text"},[t._v("仅支持平台配送商户使用")])])],2),t._v(" "),e("van-cell",[e("template",{slot:"title"},[e("span",{staticClass:"item-icon"}),t._v(" "),e("span",{staticClass:"item-text"},[t._v("下单配送费直接扣除")])])],2),t._v(" "),e("van-cell",[e("template",{slot:"title"},[e("span",{staticClass:"item-icon"}),t._v(" "),t.card.day_free_limit>0?e("span",{staticClass:"item-text"},[t._v("每日仅限"+t._s(t.card.day_free_limit)+"单享受特权")]):e("span",{staticClass:"item-text"},[t._v("每日不限次享受特权")])])],2),t._v(" "),e("van-cell",[e("template",{slot:"title"},[e("span",{staticClass:"item-icon"}),t._v(" "),t.card.delivery_fee_free_limit>0?e("span",{staticClass:"item-text"},[t._v("每单最高减免配送费"+t._s(t.card.delivery_fee_free_limit)+"元")]):e("span",{staticClass:"item-text"},[t._v("每单配送费全免")])])],2)],1)],1)]),t._v(" "),e("div",{staticClass:"cart"},[e("div",[t._v("￥ "),e("span",{attrs:{id:"cart-money"}},[t._v(t._s(t.card.price))])]),t._v(" "),e("span",{attrs:{id:"cart-submit"},on:{click:t.onSubmit}},[t._v("去支付")])]),t._v(" "),t.showPreLoading?e("iloading"):t._e()],1)},staticRenderFns:[]};var n=e("VU/8")(s,i,!1,function(t){e("W/H8")},null,null);a.default=n.exports},"W/H8":function(t,a){}});