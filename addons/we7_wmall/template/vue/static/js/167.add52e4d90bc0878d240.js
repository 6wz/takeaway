webpackJsonp([167],{iVzi:function(t,s,i){"use strict";Object.defineProperty(s,"__esModule",{value:!0});var e=i("woOf"),a=i.n(e),n=i("Dd8w"),r=i.n(n),o=i("NYxO"),c=i("NPH5"),l=i("Cz8s"),d={data:function(){return{showPreLoading:!0,popup:{coupon:!1,redPacket:!1},person_num:"",store:{},cart:{},coupons:[],redPackets:[],order:{},islegal:!1}},components:{PublicFooter:i("mzkE").a,PublicHeader:l.a,Load:c.a},computed:r()({},Object(o.c)(["orderExtra"])),methods:r()({},Object(o.b)(["setOrderExtra","replaceOrderExtra"]),{onSelectCoupon:function(t){this.setOrderExtra({key:"coupon_id",val:t}),this.onChangePopup("coupon"),this.onCalculate()},onSelectRedpacket:function(t){this.setOrderExtra({key:"redpacket_id",val:t}),this.onChangePopup("redPacket"),this.onCalculate()},onChangePopup:function(t){this.popup[t]=!this.popup[t]},onCalculate:function(){var t=this,s={sid:this.sid,extra:this.orderExtra};this.util.request({url:"wmall/store/table/create",data:s}).then(function(s){var i=s.data.message.message;t.order=i.order,t.activityed=i.activityed,t.islegal=1==i.islegal})},onSubmit:function(){var t=this;if(!this.islegal)return!1;this.islegal=!1;var s={sid:this.sid,table_id:this.table_id,extra:this.orderExtra,is_pindan:this.is_pindan,pindan_id:this.pindan_id};this.util.request({url:"wmall/store/table/submit",data:s}).then(function(s){var i=s.data.message;if(i.errno)return t.util.$toast(i.message,"",1e3),!1;var e=i.message;t.$router.replace(t.util.getUrl({path:"/pages/public/pay?order_id="+e+"&order_type=takeout"}))})},onLoad:function(){var t=this;this.table_id||(this.table_id=this.orderExtra.table_id);var s={sid:this.sid,extra:this.orderExtra,is_pindan:this.is_pindan,pindan_id:this.pindan_id,table_id:this.table_id};this.util.request({url:"wmall/store/table/create",data:s}).then(function(s){t.showPreLoading=!1;var i=s.data.message;if(i.errno)return-1e3==i.errno?(t.util.$toast(i.message.message,t.util.getUrl({path:"tangshi/pages/table/pindan",query:{sid:t.sid,table_id:t.table_id,pindan_id:i.message.pindan_id}}),1e3,"replace"),!1):(t.util.$toast(i.message,"./goods?sid="+t.sid+"&table_id="+t.table_id,1e3,"replace"),!1);i=i.message;var e=a()(t.orderExtra,{note:i.order.note,invoice_id:i.order.invoiceId,table_id:t.table_id});t.replaceOrderExtra(e),t.person_num=t.orderExtra.person_num?t.orderExtra.person_num:"",t.store=i.store,t.cart=i.cart,t.activityed=i.activityed,t.coupons=i.coupons,t.redPackets=i.redPackets,t.order=i.order,t.islegal=1==i.islegal})}}),watch:{person_num:function(){this.setOrderExtra({key:"person_num",val:this.person_num})}},created:function(){this.query=this.$route.query,this.query&&(this.sid=this.query.sid,this.table_id=this.query.table_id,this.is_pindan=this.query.is_pindan,this.pindan_id=this.query.pindan_id)},mounted:function(){this.onLoad()}},p={render:function(){var t=this,s=t.$createElement,i=t._self._c||s;return i("div",{attrs:{id:"tangshi-order-create"}},[i("public-header",{attrs:{title:"订单确认"}}),t._v(" "),i("div",{staticClass:"content",style:{bottom:1==t.order.order_type&&t.address&&t.address.address?"88px":"50px"}},[i("div",{staticClass:"content-scroll"},[i("van-field",{staticClass:"border-0px",attrs:{label:"来客人数",placeholder:"请输入用餐人数"},model:{value:t.person_num,callback:function(s){t.person_num=s},expression:"person_num"}}),t._v(" "),i("div",{staticClass:"order-food"},[i("div",{staticClass:"order-food-title"},[i("div",{staticClass:"food-shop"},[t._v(t._s(t.store.title))])]),t._v(" "),t.is_pindan&&t.pindan_id?1==t.is_pindan&&t.pindan_id>0?i("div",{staticClass:"food-list"},[t._l(t.cart.data,function(s,e){return[i("div",{staticClass:"pindan-cart-title"},[t._v("口袋"+t._s(e+1))]),t._v(" "),t._l(s,function(s){return[t._l(s,function(s){return["88888"!=s.goods_id?i("van-card",{attrs:{thumb:s.thumb}},[i("div",{staticClass:"food-title",attrs:{slot:"title"},slot:"title"},[i("div",{staticClass:"left"},[s.bargain_id>0?i("img",{staticClass:"activity-img",attrs:{src:"static/img/bargain_b.png",alt:""}}):t._e(),t._v("\n\t\t\t\t\t\t\t\t\t\t\t"+t._s(s.title)+"\n\t\t\t\t\t\t\t\t\t\t")]),t._v(" "),i("div",{staticClass:"right"},[t._v("¥"+t._s(s.total_discount_price))])]),t._v(" "),i("div",{staticClass:"food-desc",attrs:{slot:"desc"},slot:"desc"},[i("div",{staticClass:"left"},[t._v("x"+t._s(s.num))]),t._v(" "),s.total_price>s.total_discount_price?i("div",{staticClass:"right"},[t._v("¥"+t._s(s.total_price))]):t._e()])]):t._e()]})]})]})],2):t._e():i("div",{staticClass:"food-list"},[t._l(t.cart.data,function(s){return[t._l(s,function(s){return["88888"!=s.goods_id?i("van-card",{attrs:{thumb:s.thumb}},[i("div",{staticClass:"food-title",attrs:{slot:"title"},slot:"title"},[i("div",{staticClass:"left"},[s.bargain_id>0?i("img",{staticClass:"activity-img",attrs:{src:"static/img/bargain_b.png",alt:""}}):t._e(),t._v("\n\t\t\t\t\t\t\t\t\t\t"+t._s(s.title)+"\n\t\t\t\t\t\t\t\t\t")]),t._v(" "),i("div",{staticClass:"right"},[t._v("¥"+t._s(s.total_discount_price))])]),t._v(" "),i("div",{staticClass:"food-desc",attrs:{slot:"desc"},slot:"desc"},[i("div",{staticClass:"left"},[t._v("x"+t._s(s.num))]),t._v(" "),s.total_price>s.total_discount_price?i("div",{staticClass:"right"},[t._v("¥"+t._s(s.total_price))]):t._e()])]):t._e()]})]})],2),t._v(" "),i("van-cell-group",{staticClass:"extre-fee border-0px"},[i("van-cell",{staticClass:"border-0px",attrs:{title:"服务费"}},[i("template",{slot:"right-icon"},[t._v("￥"+t._s(t.order.serve_fee))])],2)],1),t._v(" "),t._m(0),t._v(" "),i("van-cell-group",{staticClass:"discount-box border-0px"},[t.order.activityed&&t.order.activityed.list?[t._l(t.order.activityed.list,function(s){return["couponCollect"!=s.type&&"redPacket"!=s.type?[i("van-cell",{staticClass:"border-0px"},[i("div",{staticClass:"discount-item flex",attrs:{slot:"title"},slot:"title"},[i("img",{attrs:{src:"static/img/"+s.type+"_b.png",alt:""}}),t._v("\n\t\t\t\t\t\t\t\t\t\t"+t._s(s.name)+"\n\t\t\t\t\t\t\t\t\t")]),t._v(" "),i("template",{slot:"right-icon"},[i("span",{staticClass:"c-danger"},[t._v(t._s(s.text))])])],2)]:t._e()]})]:t._e(),t._v(" "),i("van-cell",{staticClass:"border-0px",attrs:{title:"商家代金券"}},[t.order.coupon&&t.order.coupon.id>0?i("template",{slot:"right-icon"},[i("span",{staticClass:"c-danger",on:{click:function(s){return t.onChangePopup("coupon")}}},[t._v("-￥"+t._s(t.order.coupon.discount))])]):i("template",{slot:"right-icon"},[t.coupons&&t.coupons.length>0?i("span",{staticClass:"c-danger",on:{click:function(s){return t.onChangePopup("coupon")}}},[t._v("\n\t\t\t\t\t\t\t\t"+t._s(t.coupons.length)+"张可用代金券\n\t\t\t\t\t\t\t")]):i("span",{staticClass:"c-disabled"},[t._v("\n\t\t\t\t\t\t\t\t暂无可用代金券\n\t\t\t\t\t\t\t")]),t._v(" "),i("i",{staticClass:"van-icon van-icon-arrow van-cell__right-icon"})])],2),t._v(" "),i("van-cell",{staticClass:"border-0px",attrs:{title:"平台红包"}},[t.order.redpacket&&t.order.redpacket.id>0?i("template",{slot:"right-icon"},[i("span",{staticClass:"c-danger",on:{click:function(s){return t.onChangePopup("redPacket")}}},[t._v("-￥"+t._s(t.order.redpacket.discount))])]):i("template",{slot:"right-icon"},[t.redPackets&&t.redPackets.length>0?i("span",{staticClass:"c-danger",on:{click:function(s){return t.onChangePopup("redPacket")}}},[t._v("\n\t\t\t\t\t\t\t\t"+t._s(t.redPackets.length)+"个可用红包\n\t\t\t\t\t\t\t")]):i("span",{staticClass:"c-disabled"},[t._v("\n\t\t\t\t\t\t\t\t暂无可用红包\n\t\t\t\t\t\t\t")]),t._v(" "),i("i",{staticClass:"van-icon van-icon-arrow van-cell__right-icon"})])],2)],2),t._v(" "),t._m(1),t._v(" "),i("van-cell-group",{staticClass:"border-0px"},[i("van-cell",[i("div",{staticClass:"order-pay-info",attrs:{slot:"title"},slot:"title"},[i("div",{staticClass:"pay-price"},[t._v("\n\t\t\t\t\t\t\t\t实付\n\t\t\t\t\t\t\t\t"),i("div",[t._v("¥"+t._s(t.order.final_fee))])]),t._v(" "),i("div",{staticClass:"discount-fee"},[t._v("优惠￥"+t._s(t.order.discount_fee))]),t._v(" "),i("div",{staticClass:"total-original"},[t._v("\n\t\t\t\t\t\t\t\t共计￥"+t._s(t.order.total_fee)+"\n\t\t\t\t\t\t\t")])])])],1)],1),t._v(" "),i("div",{staticClass:"order-region"},[i("van-cell-group",[i("van-cell",{attrs:{title:"支付方式"}},[i("div",{staticClass:"c-disabled",attrs:{slot:"right-icon"},slot:"right-icon"},[t._v("在线支付")])]),t._v(" "),i("van-cell",{staticClass:"flex-lr",attrs:{title:"备注/发票",to:t.util.getUrl({path:"/tangshi/pages/table/note",query:{sid:t.sid,is_pindan:t.is_pindan,pindan_id:t.pindan_id}})}},[i("div",{staticClass:"note flex-lr",attrs:{slot:"right-icon"},slot:"right-icon"},[t.orderExtra.note||t.order.note?i("div",{staticClass:"note-text"},[t._v("\n\t\t\t\t\t\t\t\t"+t._s(t.orderExtra.note||t.order.note)+"\n\t\t\t\t\t\t\t")]):i("span",{staticClass:"c-disabled"},[t._v("口味、偏好等要求")]),t._v(" "),i("i",{staticClass:"van-icon van-icon-arrow van-cell__right-icon"})])])],1)],1)],1)]),t._v(" "),t.coupons&&t.coupons.length>0?i("van-popup",{attrs:{position:"bottom"},model:{value:t.popup.coupon,callback:function(s){t.$set(t.popup,"coupon",s)},expression:"popup.coupon"}},[i("div",{staticClass:"popup-coupon"},[i("div",{staticClass:"popup-title van-hairline--bottom"},[t._v("商家代金券")]),t._v(" "),i("div",{staticClass:"popup-container"},[i("load",{attrs:{type:"loaded",text:"可用代金券("+t.coupons.length+"张)",bgcolor:"#f5f5f5"}}),t._v(" "),i("div",{staticClass:"coupon-list"},[i("div",{staticClass:"content-padded"},t._l(t.coupons,function(s){return i("div",{staticClass:"coupon-item"},[i("div",{staticClass:"clearfix",on:{click:function(i){return t.onSelectCoupon(s.id)}}},[i("span",{staticClass:"circle circle-left"}),t._v(" "),i("span",{staticClass:"circle circle-right"}),t._v(" "),i("div",{staticClass:"left"},[i("div",{staticClass:"store-logo"},[i("img",{attrs:{src:s.logo,alt:""}})]),t._v(" "),i("div",{staticClass:"coupon-detail"},[i("div",{staticClass:"coupon-title"},[t._v(t._s(s.title))]),t._v(" "),i("div",{staticClass:"use-time"},[t._v("有效期至:"+t._s(s.endtime_cn))])])]),t._v(" "),i("div",{staticClass:"right"},[i("div",{staticClass:"price"},[i("span",[t._v("￥")]),t._v(t._s(s.discount)+"\n\t\t\t\t\t\t\t\t\t")]),t._v(" "),i("div",{staticClass:"condition"},[t._v("满"+t._s(s.condition)+"元可用")])])]),t._v(" "),t.order.coupon&&s.id==t.order.coupon.id?i("div",{staticClass:"selected-status"},[i("img",{attrs:{src:"static/img/success.png",alt:""}})]):t._e()])}),0)])],1),t._v(" "),i("div",{staticClass:"popup-cancle van-hairline--top",on:{click:function(s){return t.onSelectCoupon(0)}}},[t._v("不使用代金券")])])]):t._e(),t._v(" "),t.redPackets&&t.redPackets.length>0?i("van-popup",{attrs:{position:"bottom"},model:{value:t.popup.redPacket,callback:function(s){t.$set(t.popup,"redPacket",s)},expression:"popup.redPacket"}},[i("div",{staticClass:"popup-redpacket"},[i("div",{staticClass:"popup-title van-hairline--bottom"},[t._v("平台红包")]),t._v(" "),i("div",{staticClass:"popup-container"},[i("load",{attrs:{type:"loaded",text:"可用红包("+t.redPackets.length+"个)",bgcolor:"#f5f5f5"}}),t._v(" "),t._l(t.redPackets,function(s){return i("div",{staticClass:"redPacket-list content-padded"},[i("div",{staticClass:"redPacket-list-item",on:{click:function(i){return t.onSelectRedpacket(s.id)}}},[i("div",{staticClass:"redPacket-list-item-container"},[i("div",{staticClass:"redPacket-info row"},[i("div",{staticClass:"col-50"},[i("span",{staticClass:"redPacket-title"},[t._v(t._s(s.title))])]),t._v(" "),i("div",{staticClass:"col-50 text-right"},[i("div",{staticClass:"price"},[t._v("￥"),i("span",{staticClass:"price-num"},[t._v(t._s(s.discount))])])])]),t._v(" "),i("div",{staticClass:"redPacket-use-limit row"},[i("div",{staticClass:"col-60"},[t._v(t._s(s.day_cn))]),t._v(" "),i("div",{staticClass:"col-40 text-right"},[i("p",{staticClass:"use-condition"},[t._v("满"+t._s(s.condition)+"元可用")])])])]),t._v(" "),i("span",{staticClass:"circle circle-left"}),t._v(" "),i("span",{staticClass:"circle circle-right"}),t._v(" "),t.order.redpacket&&s.id==t.order.redpacket.id?i("div",{staticClass:"selected-status"},[i("img",{attrs:{src:"static/img/success.png",alt:""}})]):t._e()])])})],2),t._v(" "),i("div",{staticClass:"popup-cancle van-hairline--top",on:{click:function(s){return t.onSelectRedpacket(0)}}},[t._v("不使用红包")])])]):t._e(),t._v(" "),i("van-submit-bar",{attrs:{disabled:!t.islegal,price:100*t.order.final_fee,label:"待支付","button-text":"提交订单"},on:{submit:t.onSubmit}},[i("div",{staticClass:"order-benefit",attrs:{slot:"default"},slot:"default"},[t._v("\n\t\t\t已优惠 ¥"+t._s(t.order.discount_fee)+"\n\t\t")])]),t._v(" "),i("transition",{attrs:{name:"loading"}},[t.showPreLoading?i("iloading"):t._e()],1)],1)},staticRenderFns:[function(){var t=this.$createElement,s=this._self._c||t;return s("div",{staticClass:"divide"},[s("div",{staticClass:"divide-line"})])},function(){var t=this.$createElement,s=this._self._c||t;return s("div",{staticClass:"divide"},[s("div",{staticClass:"divide-line"})])}]};var _=i("VU/8")(d,p,!1,function(t){i("pvRt")},null,null);s.default=_.exports},pvRt:function(t,s){}});