webpackJsonp([79],{Gxs1:function(t,e){},hN1u:function(t,e,s){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var i=s("woOf"),a=s.n(i),r=s("mvHQ"),o=s.n(r),c=s("Gu7T"),n=s.n(c),d=s("Dd8w"),l=s.n(d),p=s("NYxO"),v=s("NPH5"),_=s("Cz8s"),u=s("mzkE"),h=s("Fd2+"),m=s("deIj"),g=s("Yo4o"),C={data:function(){return{query:{},showPreLoading:!0,store:{cn:{}},mobile:"",popup:{coupon:!1,redPacket:!1,deliveryTime:!1,picknum:!1,mealRedpacketRules:!1,svipRedpacket:!1,zhunshibaoAgreementShow:!1,yinsihaoAgreementShow:!1},cart:{},address:{},coupons:[],redPackets:[],svip_redpacket:{},order:{deliveryTimes:{days:{},times:{},predict_day:0,predict_index:0}},islegal:!1,columns:["1人","2人","3人","4人","5人"],buy_mealredpacket:0,buy_zhunshibao:0,config_takeout:{},huangou:{goods:[],message:{}},map:{},mapLoaded:!1}},components:{PublicFooter:u.a,PublicHeader:_.a,Load:v.a,Dialog:h.a},computed:l()({},Object(p.c)(["orderExtra"])),watch:{mobile:function(){this.setOrderExtra({key:"mobile",val:this.mobile})}},methods:l()({},Object(p.b)(["setOrderExtra","replaceOrderExtra"]),{loadmap:function(){var t=this;t.mapLoaded||t.store.location_y&&t.store.location_x&&Object(g.a)().then(function(e){t.map=new e.Map("map-container",{resizeEnable:!0,center:[t.store.location_y,t.store.location_x],zoom:15});var s='<div class="marker-store"><div class="img-wrap"><img class="img-100" src="'+t.store.logo+'" alt=""></div><div class="store-distance hide"><div class="font-12 ">距您699m</div></div>';new e.Marker({position:[t.store.location_y,t.store.location_x],offset:new e.Pixel(-15,-40),content:s}).setMap(t.map),t.mapLoaded=!0})},onHuangouGoods:function(t,e){this.goods_id=t,this.sign=e,this.onCalculate()},onToggleZhunshibao:function(t){this.setOrderExtra({key:"buy_zhunshibao",val:t}),this.onCalculate()},onToggleYinsihao:function(t){this.setOrderExtra({key:"yinsihao_status",val:t})},onConfirmSvipExchange:function(){var t=this,e=this,s=e.svip_redpacket.take_status,i=e.svip_redpacket.id;"exchange"==s&&(i=e.svip_redpacket.store_redpacket.id),Object(m.c)({vue:e,url:"wmall/order/create/exchange",data:{sid:e.sid,id:i,oldid:e.svip_redpacket.exchange_id,discount:e.order.total_fee},success:function(i){var a="领取成功";"exchange"==s&&(a="兑换成功"),t.util.$toast(a),i.redPackets&&(e.redPackets=[].concat(n()(i.redPackets))),e.svip_redpacket=i.svip_redpacket,e.onSelectRedpacket(i.redpacket_id),"exchange"==s&&e.onChangePopup("svipRedpacket")}})},onConfirmPersonNum:function(t,e){var s=e+1;this.setOrderExtra({key:"person_num",val:s}),this.popup.picknum=!1},onSelectCoupon:function(t){this.setOrderExtra({key:"coupon_id",val:t}),this.onChangePopup("coupon"),this.onCalculate()},onSelectRedpacket:function(t){this.setOrderExtra({key:"redpacket_id",val:t}),this.onChangePopup("redPacket"),this.onCalculate()},onChangePopup:function(t){this.popup[t]=!this.popup[t],"deliveryTimes"!=t||this.order.deliveryTimes.predict_day&&this.order.deliveryTimes.times[this.order.deliveryTimes.predict_day]||this.util.$toast("商户暂时只支持立即配送")},onChangeOrderType:function(t){this.setOrderExtra({key:"order_type",val:t}),2==t&&(this.setOrderExtra({key:"buy_zhunshibao",val:!1}),this.loadmap()),this.onCalculate()},onSelectDeliveryday:function(t){this.order.deliveryTimes.predict_day=t,this.order.deliveryTimes.predict_day_cn=t,this.setOrderExtra({key:"predict_day_cn",val:t})},onSelectDeliverytimes:function(t,e){this.order.deliveryTimes.predict_index=e,this.order.deliveryTimes.predict_time_cn=t,this.onChangePopup("deliveryTime"),this.setOrderExtra({key:"predict_index",val:e}),this.setOrderExtra({key:"predict_time_cn",val:t}),this.onCalculate()},onBuyMealredpacket:function(){this.buy_mealredpacket=!this.buy_mealredpacket,1==this.buy_mealredpacket?this.setOrderExtra({key:"buy_mealredpacket",val:1}):(this.setOrderExtra({key:"redpacket_id",val:0}),this.setOrderExtra({key:"buy_mealredpacket",val:0})),this.onCalculate()},onToggleBuysvip:function(){1==this.is_buysvip?this.is_buysvip=0:this.is_buysvip=1,this.onCalculate()},onCalculate:function(){var t=this,e={sid:this.sid,extra:o()(this.orderExtra),is_buysvip:this.is_buysvip,is_pindan:this.is_pindan,pindan_id:this.pindan_id,goods_id:this.goods_id,sign:this.sign};this.util.request({url:"wmall/order/create/index",data:e,method:"post"}).then(function(e){var s=e.data.message.message;t.address=s.address,t.order=s.order,t.islegal=1==s.islegal,t.redPackets=s.redPackets,t.cart=s.cart,t.svip_redpacket=s.svip_redpacket,t.store=s.store,t.onCheckSendPrice(s.message,t.address),s.huangou&&(s.huangou.message.errno&&t.util.$toast(s.huangou.message.message,"",2e3),s.huangou.cart_message&&t.util.$toast(s.huangou.cart_message,"",3e3)),t.goods_id=0,t.sign=""})},onCheckSendPrice:function(t,e){if("noReachSendPrice"==t.errno){if(e)e.address,e.location_x,e.location_y;return this.$toast(t.message,3e3),this.$router.push(this.util.getUrl({path:"/pages/store/goods?sid="+this.sid})),!1}return!0},onSubmit:function(){var t=this;if(2==this.orderExtra.order_type){if(!this.mobile)return this.$toast("请输入提货手机号"),!1;if(!this.util.isValidMobile(this.mobile))return this.$toast("请输入正确的手机号"),!1;this.orderExtra.mobile=this.mobile}return 1!=this.orderExtra.order_type&&this.orderExtra.order_type||this.orderExtra.address_id||2==this.store.delivery_type?!!this.islegal&&(this.islegal=!1,2==this.store.delivery_type&&(this.orderExtra.order_type=2),void(1!=this.orderExtra.order_type&&this.orderExtra.order_type||1!=this.config_takeout.audit_accept_address?this.submitPost():h.a.confirm({title:"请确定您的收货信息",message:"收货地址："+this.address.address+"-"+this.address.number+"</br>手机　号："+this.address.mobile+"</br>收货　人："+this.address.realname}).then(function(){t.submitPost()}).catch(function(){t.islegal=!0}))):(this.$toast("请选择收货地址"),!1)},submitPost:function(){var t=this,e={sid:this.sid,extra:this.orderExtra,is_pindan:this.is_pindan,pindan_id:this.pindan_id};this.util.request({url:"wmall/order/create/submit",data:e}).then(function(e){var s=e.data.message;if(s.errno)return t.$toast(s.message),1e3==s.errno&&(t.$router.push(t.util.getUrl({path:"/pages/store/goods?sid="+t.sid})),!1);var i=s.message;t.replaceOrderExtra({}),t.$router.replace(t.util.getUrl({path:"/pages/public/pay?order_id="+i+"&order_type=takeout"}))})},onLoad:function(){var t=this,e={sid:this.sid,extra:o()(this.orderExtra),is_buysvip:this.is_buysvip,is_pindan:this.is_pindan,pindan_id:this.pindan_id};this.util.request({url:"wmall/order/create/index",data:e,method:"post"}).then(function(e){t.showPreLoading=!1;var s=e.data.message;if(s.errno)return 1e3==s.errno?(t.$router.replace({path:"/pages/store/goods",query:{sid:t.sid}}),!1):(t.$toast(s.message),!1);s=s.message;var i=a()(t.orderExtra,{predict_index:s.order.deliveryTimes.predict_index,predict_time_cn:s.order.deliveryTimes.predict_time_cn,predict_day_cn:s.order.deliveryTimes.predict_day_cn,address_id:s.address.id,order_type:s.order.order_type,person_num:s.order.person_num});t.replaceOrderExtra(i),t.store=s.store,t.cart=s.cart,t.address=s.address,t.coupons=s.coupons,t.redPackets=s.redPackets,t.order=s.order,t.islegal=1==s.islegal,t.mobile=s.mobile,1==t.orderExtra.buy_mealredpacket&&(t.buy_mealredpacket=1),t.config_takeout=s.config_takeout,t.orderExtra.mobile&&(t.mobile=t.orderExtra.mobile),t.onCheckSendPrice(s.message,t.address),t.svip_redpacket=s.svip_redpacket,t.huangou=s.huangou,2==t.order.order_type&&t.loadmap()})}}),created:function(){this.query=this.util.parseQuery(this.$route.query),this.query&&(this.sid=this.query.sid,this.is_buysvip=this.query.is_buysvip,this.is_pindan=this.query.is_pindan,this.pindan_id=this.query.pindan_id)},mounted:function(){this.onLoad()},destroyed:function(){this.util.request({url:"wmall/order/create/destroyed",data:{sid:this.sid}}).then(function(t){})}},y={render:function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{attrs:{id:"order-create"}},[s("public-header",{attrs:{title:"订单确认"}}),t._v(" "),s("div",{staticClass:"content",style:{bottom:1==t.order.order_type&&t.address&&t.address.address?"88px":"50px"}},[s("div",{staticClass:"content-scroll"},[s("div",{staticClass:"delivery-info margin-10-b bg-default radius-3"},[3==t.store.delivery_type?s("ul",{staticClass:"delivery-mode"},[1==t.store.delivery_type||3==t.store.delivery_type?s("li",{staticClass:"delivery",class:{active:1==t.order.order_type},on:{click:function(e){return t.onChangeOrderType(1)}}},[t._v(t._s(1==t.store.delivery_mode?"商家自送":"骑手配送"))]):t._e(),t._v(" "),2==t.store.delivery_type||3==t.store.delivery_type?s("li",{staticClass:"self",class:{active:2==t.order.order_type},on:{click:function(e){return t.onChangeOrderType(2)}}},[t._v("到店自取 "),t.store.selfPickup_status>0?s("van-tag",{attrs:{type:"danger"}},[t._v("有优惠")]):t._e()],1):t._e()]):t._e(),t._v(" "),s("div",{directives:[{name:"show",rawName:"v-show",value:1==t.store.delivery_type||3==t.store.delivery_type,expression:"store.delivery_type == 1 || store.delivery_type == 3"}],staticClass:"plateform-box"},[1==t.store.delivery_type?s("van-cell-group",{staticClass:"border-0px"},[s("van-cell",{attrs:{value:1==t.store.delivery_mode?"商家自送":"骑手配送"}})],1):t._e(),t._v(" "),1==t.order.order_type?s("div",{staticClass:"plateform-inner"},[s("van-cell-group",{staticClass:"border-0px"},[t.address.address?s("van-cell",{staticClass:"store-address",attrs:{icon:"locationfill","is-link":""},on:{click:function(e){return t.util.jsUrl("/pages/member/address",t.query,"replace")}}},[s("template",{slot:"title"},[s("div",[t._v(t._s(t.address.address)+"-"+t._s(t.address.number))]),t._v(" "),s("div",{staticClass:"store-title"},[t._v(t._s(t.address.realname)+" "+t._s(t.address.sex)+" "+t._s(t.address.mobile))])])],2):s("van-cell",{staticClass:"addrress-select",attrs:{title:"选择收货地址",icon:"plus","is-link":""},on:{click:function(e){return t.util.jsUrl("/pages/member/address",t.query,"replace")}}}),t._v(" "),s("van-cell",{attrs:{title:t.order.deliveryTimes.predict_day_cn+" "+t.order.deliveryTimes.predict_time_cn,icon:"timefill","is-link":""},on:{click:function(e){return t.onChangePopup("deliveryTime")}}}),t._v(" "),t.store.rest_reserve_cn?s("van-cell",{staticClass:"delivery-tip"},[t._v(t._s(t.store.rest_reserve_cn))]):t._e()],1)],1):t._e()],1),t._v(" "),s("div",{directives:[{name:"show",rawName:"v-show",value:2==t.store.delivery_type||3==t.store.delivery_type,expression:"store.delivery_type == 2 || store.delivery_type == 3"}],staticClass:"instore-box"},[2==t.store.delivery_type?s("van-cell-group",{staticClass:"border-0px"},[s("van-cell",{staticClass:"border-0px"},[s("template",{slot:"title"},[s("span",{staticClass:"van-cell-text"},[t._v("到店自取")]),t._v(" "),t.store.selfPickup_status>0?s("van-tag",{attrs:{type:"danger"}},[t._v("有优惠")]):t._e()],1)],2)],1):t._e(),t._v(" "),s("div",{directives:[{name:"show",rawName:"v-show",value:2==t.order.order_type,expression:"order.order_type == 2"}],staticClass:"instore-inner"},[s("div",{staticClass:"padding-15-lr font-16 font-bold w-100 ellipsis margin-5-t margin-15-b"},[t._v(t._s(t.store.address))]),t._v(" "),s("div",{attrs:{id:"map-container"}}),t._v(" "),s("van-row",{staticClass:"font-14 padding-10-b"},[s("van-col",{attrs:{span:"12"}},[s("div",{staticClass:"van-hairline--right padding-15-l padding-10-r"},[s("div",{staticClass:"c-gray margin-5-b"},[t._v("自取时间")]),t._v(" "),s("div",{staticClass:"flex-lr",on:{click:function(e){return t.onChangePopup("deliveryTime")}}},[s("div",{staticClass:"flex-1"},[t._v(t._s(t.order.deliveryTimes.predict_day_cn)+" "+t._s(t.order.deliveryTimes.predict_time_cn))]),t._v(" "),s("i",{staticClass:"van-icon van-icon-arrow van-cell__right-icon"})])])]),t._v(" "),s("van-col",{attrs:{span:"12"}},[s("div",{staticClass:"padding-15-r padding-10-l"},[s("div",{staticClass:"c-gray margin-5-b"},[t._v("预留电话")]),t._v(" "),s("van-row",{attrs:{type:"flex",align:"center"}},[s("van-col",{attrs:{span:"20"}},[s("input",{directives:[{name:"model",rawName:"v-model",value:t.mobile,expression:"mobile"}],staticClass:"w-100",attrs:{placeholder:"请输入自提人手机号",type:"text"},domProps:{value:t.mobile},on:{input:function(e){e.target.composing||(t.mobile=e.target.value)}}})]),t._v(" "),s("van-col",{staticClass:"text-right",attrs:{span:"4"}},[s("i",{staticClass:"van-icon van-icon-arrow van-cell__right-icon"})])],1)],1)])],1)],1)],1)]),t._v(" "),s("div",{staticClass:"order-food"},[s("div",{staticClass:"order-food-title"},[s("div",{staticClass:"food-shop"},[t._v(t._s(t.store.title))]),t._v(" "),2==t.store.delivery_mode?s("div",{staticClass:"order-tips-thirpart"},[t._v(t._s(t.store.delivery_title))]):t._e()]),t._v(" "),t.is_pindan&&t.pindan_id?1==t.is_pindan&&t.pindan_id>0?s("div",{staticClass:"food-list"},[t._l(t.cart.data,function(e,i){return[s("div",{staticClass:"pindan-cart-title"},[t._v("口袋"+t._s(i+1))]),t._v(" "),t._l(e,function(e){return[t._l(e,function(e){return["88888"!=e.goods_id?s("van-card",{attrs:{thumb:e.thumb}},[s("div",{staticClass:"food-title",attrs:{slot:"title"},slot:"title"},[s("div",{staticClass:"left"},[e.bargain_id>0?s("img",{staticClass:"activity-img",attrs:{src:"static/img/bargain_b.png",alt:""}}):t._e(),t._v("\n\t\t\t\t\t\t\t\t\t\t\t"+t._s(e.title)+"\n\t\t\t\t\t\t\t\t\t\t")]),t._v(" "),s("div",{staticClass:"right"},[t._v("¥"+t._s(e.total_discount_price))])]),t._v(" "),s("div",{staticClass:"food-desc",attrs:{slot:"desc"},slot:"desc"},[s("div",{staticClass:"left"},[t._v("x"+t._s(e.num))]),t._v(" "),s("div",{staticClass:"right"},[t._v("¥"+t._s(e.total_price))])])]):t._e()]})]})]})],2):t._e():s("div",{staticClass:"food-list"},[t._l(t.cart.data,function(e){return[t._l(e,function(e){return["88888"!=e.goods_id&&1==e.is_show?s("van-card",{attrs:{thumb:e.thumb}},[s("div",{staticClass:"food-title",attrs:{slot:"title"},slot:"title"},[s("div",{staticClass:"left"},[e.bargain_id>0&&"bargain"==e.bargain_type?s("img",{staticClass:"activity-img",attrs:{src:"static/img/bargain_b.png",alt:""}}):t._e(),t._v("\n\t\t\t\t\t\t\t\t\t\t"+t._s(e.title)+"\n\t\t\t\t\t\t\t\t\t")]),t._v(" "),s("div",{staticClass:"right"},[t._v("¥"+t._s(e.total_discount_price_show))])]),t._v(" "),s("div",{staticClass:"food-desc",attrs:{slot:"desc"},slot:"desc"},["huangou"==e.bargain_type?s("div",{staticClass:"left"},[t._v("x"+t._s(e.num-e.discount_num))]):s("div",{staticClass:"left"},[t._v("x"+t._s(e.num))]),t._v(" "),s("div",{staticClass:"right"},[t._v("¥"+t._s(e.total_price_show))])])]):t._e()]})]})],2),t._v(" "),s("van-cell-group",{staticClass:"extre-fee border-0px"},[s("van-cell",{staticClass:"border-0px",attrs:{title:t.store.cn.box_price}},[s("template",{slot:"right-icon"},[t._v("￥"+t._s(t.order.box_price))])],2),t._v(" "),t.order.pack_fee>0?s("van-cell",{staticClass:"border-0px",attrs:{title:t.store.cn.pack_fee}},[s("template",{slot:"right-icon"},[t._v("￥"+t._s(t.order.pack_fee))])],2):t._e(),t._v(" "),s("van-cell",{staticClass:"border-0px",attrs:{title:"配送费"}},[s("template",{slot:"right-icon"},[t._v("￥"+t._s(t.order.delivery_fee))])],2),t._v(" "),t.order.extra_fee>0?[t._l(t.order.extra_fee_detail,function(e){return t.order.extra_fee_detail.length>0?[s("van-cell",{staticClass:"border-0px",attrs:{title:e.name}},[s("template",{slot:"right-icon"},[t._v("￥"+t._s(e.fee))])],2)]:t._e()})]:t._e()],2),t._v(" "),t._m(0),t._v(" "),s("van-cell-group",{staticClass:"discount-box border-0px"},[t.order.activityed&&t.order.activityed.list?[t._l(t.order.activityed.list,function(e){return["couponCollect"!=e.type&&"redPacket"!=e.type?[s("van-cell",{staticClass:"border-0px"},[s("div",{staticClass:"discount-item flex",attrs:{slot:"title"},slot:"title"},[s("img",{attrs:{src:"static/img/"+e.type+"_b.png",alt:""}}),t._v("\n\t\t\t\t\t\t\t\t\t\t"+t._s(e.name)+"\n\t\t\t\t\t\t\t\t\t")]),t._v(" "),s("template",{slot:"right-icon"},[s("span",{staticClass:"c-danger"},[t._v(t._s(e.text))])])],2)]:t._e()]})]:t._e(),t._v(" "),s("van-cell",{staticClass:"border-0px",attrs:{title:"商家代金券"}},[t.order.coupon&&t.order.coupon.id>0?s("template",{slot:"right-icon"},[s("span",{staticClass:"c-danger",on:{click:function(e){return t.onChangePopup("coupon")}}},[t._v("-￥"+t._s(t.order.coupon.discount))])]):s("template",{slot:"right-icon"},[t.coupons&&t.coupons.length>0?s("span",{staticClass:"c-danger",on:{click:function(e){return t.onChangePopup("coupon")}}},[t._v("\n\t\t\t\t\t\t\t\t"+t._s(t.coupons.length)+"张可用代金券\n\t\t\t\t\t\t\t")]):s("span",{staticClass:"c-disabled"},[t._v("\n\t\t\t\t\t\t\t\t暂无可用代金券\n\t\t\t\t\t\t\t")]),t._v(" "),s("i",{staticClass:"van-icon van-icon-arrow van-cell__right-icon"})])],2),t._v(" "),s("van-cell",{staticClass:"border-0px",attrs:{title:"平台红包"}},[t.order.redpacket&&t.order.redpacket.id?s("template",{slot:"right-icon"},[s("span",{staticClass:"c-danger",on:{click:function(e){return t.onChangePopup("redPacket")}}},[t._v("-￥"+t._s(t.order.redpacket.discount))])]):s("template",{slot:"right-icon"},[t.redPackets&&t.redPackets.length>0?s("span",{staticClass:"c-danger",on:{click:function(e){return t.onChangePopup("redPacket")}}},[t._v("\n\t\t\t\t\t\t\t\t"+t._s(t.redPackets.length)+"个可用红包\n\t\t\t\t\t\t\t")]):[t.svip_redpacket&&t.svip_redpacket.id?s("span",{staticClass:"c-danger",on:{click:function(e){return t.onChangePopup("redPacket")}}},[t._v("您有可领取的超级会员红包")]):s("span",{staticClass:"c-disabled"},[t._v("\n\t\t\t\t\t\t\t\t\t暂无可用红包\n\t\t\t\t\t\t\t\t")])],t._v(" "),s("i",{staticClass:"van-icon van-icon-arrow van-cell__right-icon"})],2)],2),t._v(" "),t.order.meal_redpackets?s("div",{staticClass:"redpacket-buy"},[s("div",{staticClass:"flex-lr"},[s("p",{staticClass:"buy-tip"},[t._v(t._s(t.order.meal_redpackets.title)+" "),t._e()],1),t._v(" "),s("span",{staticClass:"check-box flex",class:{active:1==t.buy_mealredpacket},on:{click:t.onBuyMealredpacket}},[s("i",{staticClass:"icon icon-check"})])]),t._v(" "),s("div",{staticClass:"flex-lr"},[s("p",{staticClass:"buy-total"},[t._v(t._s(t.order.meal_redpackets.placeholder))]),t._v(" "),s("p",{staticClass:"redpacket-price"},[t._e(),t._v(" "),s("span",{staticClass:"now"},[t._v("¥"+t._s(t.order.meal_redpackets.price))])])])]):t._e()],2),t._v(" "),t._m(1),t._v(" "),s("van-cell-group",{staticClass:"border-0px"},[s("van-cell",[s("div",{staticClass:"order-pay-info",attrs:{slot:"title"},slot:"title"},[s("div",{staticClass:"pay-price"},[t._v("\n\t\t\t\t\t\t\t\t实付\n\t\t\t\t\t\t\t\t"),s("div",[t._v("¥"+t._s(t.order.final_fee_show))])]),t._v(" "),s("div",{staticClass:"discount-fee"},[t._v("优惠￥"+t._s(t.order.discount_fee))]),t._v(" "),s("div",{staticClass:"total-original"},[t._v("\n\t\t\t\t\t\t\t\t共计￥"+t._s(t.order.total_fee_show)+"\n\t\t\t\t\t\t\t")])])])],1)],1),t._v(" "),1==t.order.show_buy_svip?s("div",{staticClass:"buy-svip bg-default padding-15 margin-10-t flex-lr font-12"},[s("div",{staticClass:"left flex-lr"},[s("div",{staticClass:"svip-desc"},[t._m(2),t._v(" "),t.svip_redpacket&&t.svip_redpacket.id?[s("div",{staticClass:"second-desc"},[t._v("1.可用一个"+t._s(t.svip_redpacket.discount)+"元会员专享红包")])]:[s("div",{staticClass:"second-desc"},[t._v("成为超级会员, 尊享众多会员特权")])]],2),t._v(" "),t.order.svip_meal?s("div",{staticClass:"svip-price"},[s("div",{staticClass:"first-buy"},[t._v(t._s(t.order.svip_meal.description))]),t._v(" "),s("div",{staticClass:"flex-lr"},[s("div",{staticClass:"c-gray line-through margin-15-r"},[t._v("￥"+t._s(t.order.svip_meal.oldprice))]),t._v(" "),s("div",{staticClass:"font-16 font-bold"},[t._v("￥"+t._s(t.order.svip_meal.price))])])]):t._e()]),t._v(" "),s("div",{staticClass:"right",on:{click:t.onToggleBuysvip}},[s("div",{staticClass:"icon icon-check",class:{active:1==t.is_buysvip}})])]):t._e(),t._v(" "),t.huangou&&t.huangou.goods.length>0?s("div",{staticClass:"huangou-wrap"},[s("div",{staticClass:"huangou-title"},[t.huangou.activity?s("div",{staticClass:"huangou-title-left"},[t._v(t._s(t.huangou.activity.title))]):t._e(),t._v(" "),1==t.huangou.can_buy_huangou_goods?[t.huangou.price_limit>0?s("div",{staticClass:"font-12 c-gray"},[t._v("已购满"+t._s(t.huangou.price_limit)+"元，获得换购特惠商品机会")]):s("div",{staticClass:"font-12 c-gray"},[t.huangou.activity?[t._v(t._s(t.huangou.activity.content))]:t._e()],2)]:s("div",{staticClass:"font-12 c-gray"},[t._v("购满"+t._s(t.huangou.price_limit)+"元，可获得换购特惠商品机会")])],2),t._v(" "),s("div",{staticClass:"huangou-list"},t._l(t.huangou.goods,function(e){return s("div",{staticClass:"huangou-item"},[s("div",{staticClass:"huangou-img"},[s("img",{attrs:{src:e.thumb,alt:""}}),t._v(" "),s("div",{staticClass:"discount"},[t._v(t._s(e.discount)+"折")])]),t._v(" "),s("div",{staticClass:"goods-info"},[s("div",[t._v(t._s(e.title))]),t._v(" "),s("div",{staticClass:"flex"},[s("div",{staticClass:"price-wrap"},[s("span",{staticClass:"c-danger"},[t._v("¥"+t._s(e.price))]),t._v(" "),s("span",{staticClass:"old-price"},[t._v("¥"+t._s(e.old_price?e.old_price:e.price))])]),t._v(" "),1==t.huangou.can_buy_huangou_goods?s("div",{staticClass:"goods-num"},[s("span",{staticClass:"icon icon-minus",on:{click:function(s){return t.onHuangouGoods(e.id,"-")}}}),t._v(" "),t.cart.data1&&t.cart.data1[e.id]?s("div",{staticClass:"num"},[t._v(t._s(t.cart.data1[e.id][0].num?t.cart.data1[e.id][0].discount_num:0))]):s("div",{staticClass:"num"},[t._v("0")]),t._v(" "),s("span",{staticClass:"icon icon-plus",on:{click:function(s){return t.onHuangouGoods(e.id,"+")}}})]):t._e()])])])}),0)]):t._e(),t._v(" "),1==t.orderExtra.order_type?[t.store.data&&t.store.data.zhunshibao&&1==t.store.data.zhunshibao.status?s("div",{staticClass:"permit-time"},[s("div",{staticClass:"flex-lr"},[s("div",{staticClass:"flex"},[s("i",{staticClass:"icon icon-security"}),t._v(" "),s("div",{staticClass:"permit-time-title"},[t._v("准时宝")]),t._v(" "),s("i",{staticClass:"icon icon-question",on:{click:function(e){return t.onChangePopup("zhunshibaoAgreementShow")}}})]),t._v(" "),s("div",{staticClass:"flex"},[s("div",{staticClass:"padding-10-r"},[t._v("¥"+t._s(t.order.zhunshibao_price))]),t._v(" "),s("van-switch",{attrs:{size:"22px","active-color":"#ff2d4b","inactive-color":"#eee"},on:{change:t.onToggleZhunshibao},model:{value:t.orderExtra.buy_zhunshibao,callback:function(e){t.$set(t.orderExtra,"buy_zhunshibao",e)},expression:"orderExtra.buy_zhunshibao"}})],1)]),t._v(" "),s("div",{staticClass:"permit-time-tips"},[t._v(t._s(t.store.data.zhunshibao.rule_cn))]),t._v(" "),t._e()]):t._e()]:t._e(),t._v(" "),t.order.yinsihao&&1==t.order.yinsihao.status?s("div",{staticClass:"permit-time"},[s("div",{staticClass:"flex-lr"},[s("div",{staticClass:"flex"},[s("i",{staticClass:"icon icon-lock font-16"}),t._v(" "),s("div",{staticClass:"permit-time-title"},[t._v("号码保护")]),t._v(" "),s("i",{staticClass:"icon icon-question",on:{click:function(e){return t.onChangePopup("yinsihaoAgreementShow")}}})]),t._v(" "),s("div",{staticClass:"flex"},[s("van-switch",{attrs:{size:"22px","active-color":"#ff2d4b","inactive-color":"#eee"},on:{change:t.onToggleYinsihao},model:{value:t.orderExtra.yinsihao_status,callback:function(e){t.$set(t.orderExtra,"yinsihao_status",e)},expression:"orderExtra.yinsihao_status"}})],1)]),t._v(" "),s("div",{staticClass:"permit-time-tips"},[t._v("对商家、骑手隐藏您的真实手机号, 保护您的隐私")])]):t._e(),t._v(" "),s("div",{staticClass:"order-region"},[s("van-cell-group",[s("van-cell",{attrs:{title:"支付方式"}},[s("div",{staticClass:"c-disabled",attrs:{slot:"right-icon"},slot:"right-icon"},[t._v("在线支付")])]),t._v(" "),t.store.data&&t.store.data.order_form&&1==t.store.data.order_form.person_num?s("van-cell",{attrs:{title:"餐具数量"},on:{click:function(e){return t.onChangePopup("picknum")}}},[s("template",{slot:"right-icon"},[t.orderExtra.person_num?[t._v("\n\t\t\t\t\t\t\t\t"+t._s(t.orderExtra.person_num)+"套\n\t\t\t\t\t\t\t")]:s("span",{staticClass:"c-disabled"},[t._v("未选择")]),t._v(" "),s("i",{staticClass:"van-icon van-icon-arrow van-cell__right-icon"})],2)],2):t._e(),t._v(" "),s("van-cell",{staticClass:"flex-lr",attrs:{title:"备注/发票"},on:{click:function(e){return t.util.jsUrl("/pages/order/note",{sid:t.sid},"replace")}}},[s("div",{staticClass:"note flex-lr",attrs:{slot:"right-icon"},slot:"right-icon"},[t.orderExtra.note||t.order.note?s("div",{staticClass:"note-text"},[t._v("\n\t\t\t\t\t\t\t\t"+t._s(t.orderExtra.note||t.order.note)+"\n\t\t\t\t\t\t\t")]):s("span",{staticClass:"c-disabled"},[t._v("口味、偏好等要求")]),t._v(" "),s("i",{staticClass:"van-icon van-icon-arrow van-cell__right-icon"})])])],1)],1)],2)]),t._v(" "),s("van-popup",{attrs:{position:"bottom"},model:{value:t.popup.picknum,callback:function(e){t.$set(t.popup,"picknum",e)},expression:"popup.picknum"}},[s("div",{staticClass:"popup-picknum"},[s("van-picker",{attrs:{columns:t.columns,"show-toolbar":"","confirm-button-text":"确认","cancel-button-text":"取消"},on:{confirm:t.onConfirmPersonNum,cancel:function(e){return t.onChangePopup("picknum")}}})],1)]),t._v(" "),s("van-popup",{staticClass:"agreement-popup",style:{height:"100%"},attrs:{position:"bottom"},model:{value:t.popup.zhunshibaoAgreementShow,callback:function(e){t.$set(t.popup,"zhunshibaoAgreementShow",e)},expression:"popup.zhunshibaoAgreementShow"}},[s("van-nav-bar",{staticClass:"border-0px",style:{background:"#ff2d4b",color:"#fff"},attrs:{title:"准时宝服务协议"},on:{"click-left":function(e){return t.onChangePopup("zhunshibaoAgreementShow")}}},[s("van-icon",{staticClass:"font-20",style:{color:"#fff"},attrs:{slot:"left",name:"left"},slot:"left"})],1),t._v(" "),s("div",{staticClass:"popup-content margin-10",domProps:{innerHTML:t._s(t.store.zhunshibao_agreement)}})],1),t._v(" "),s("van-popup",{staticClass:"agreement-popup",style:{height:"100%"},attrs:{position:"bottom"},model:{value:t.popup.yinsihaoAgreementShow,callback:function(e){t.$set(t.popup,"yinsihaoAgreementShow",e)},expression:"popup.yinsihaoAgreementShow"}},[s("van-nav-bar",{staticClass:"border-0px",style:{background:"#ff2d4b",color:"#fff"},attrs:{title:"隐私号服务协议"},on:{"click-left":function(e){return t.onChangePopup("yinsihaoAgreementShow")}}},[s("van-icon",{staticClass:"font-20",style:{color:"#fff"},attrs:{slot:"left",name:"left"},slot:"left"})],1),t._v(" "),t.order.yinsihao?s("div",{staticClass:"popup-content margin-10",domProps:{innerHTML:t._s(t.order.yinsihao.agreement)}}):t._e()],1),t._v(" "),t.coupons&&t.coupons.length>0?s("van-popup",{attrs:{position:"bottom"},model:{value:t.popup.coupon,callback:function(e){t.$set(t.popup,"coupon",e)},expression:"popup.coupon"}},[s("div",{staticClass:"popup-coupon"},[s("div",{staticClass:"popup-title van-hairline--bottom"},[t._v("商家代金券")]),t._v(" "),s("div",{staticClass:"popup-container"},[s("load",{attrs:{type:"loaded",text:"可用代金券("+t.coupons.length+"张)",bgcolor:"#f5f5f5"}}),t._v(" "),s("div",{staticClass:"coupon-list"},[s("div",{staticClass:"content-padded"},t._l(t.coupons,function(e){return s("div",{staticClass:"coupon-item"},[s("div",{staticClass:"clearfix",on:{click:function(s){return t.onSelectCoupon(e.id)}}},[s("span",{staticClass:"circle circle-left"}),t._v(" "),s("span",{staticClass:"circle circle-right"}),t._v(" "),s("div",{staticClass:"left"},[s("div",{staticClass:"store-logo"},[s("img",{attrs:{src:e.logo,alt:""}})]),t._v(" "),s("div",{staticClass:"coupon-detail"},[s("div",{staticClass:"coupon-title"},[t._v(t._s(e.title))]),t._v(" "),s("div",{staticClass:"use-time"},[t._v("有效期至:"+t._s(e.endtime_cn))])])]),t._v(" "),s("div",{staticClass:"right"},[s("div",{staticClass:"price"},[s("span",[t._v("￥")]),t._v(t._s(e.discount)+"\n\t\t\t\t\t\t\t\t\t")]),t._v(" "),s("div",{staticClass:"condition"},[t._v("满"+t._s(e.condition)+"元可用")])])]),t._v(" "),t.order.coupon&&e.id==t.order.coupon.id?s("div",{staticClass:"selected-status"},[s("img",{attrs:{src:"static/img/success.png",alt:""}})]):t._e()])}),0)])],1),t._v(" "),s("div",{staticClass:"popup-cancle van-hairline--top",on:{click:function(e){return t.onSelectCoupon(0)}}},[t._v("不使用代金券")])])]):t._e(),t._v(" "),t.redPackets&&t.redPackets.length>0||t.svip_redpacket&&t.svip_redpacket.id?s("van-popup",{attrs:{position:"bottom"},model:{value:t.popup.redPacket,callback:function(e){t.$set(t.popup,"redPacket",e)},expression:"popup.redPacket"}},[s("div",{staticClass:"popup-redpacket"},[s("div",{staticClass:"popup-title van-hairline--bottom"},[t._v("平台红包")]),t._v(" "),s("div",{staticClass:"popup-container"},[t.svip_redpacket&&t.svip_redpacket.id?[s("load",{attrs:{type:"loaded",text:"超级会员专享红包",bgcolor:"#f5f5f5"}}),t._v(" "),1==t.is_buysvip?s("div",{staticClass:"svip-redpacket"},[s("div",{staticClass:"svip-redpacket-item"},[s("div",{staticClass:"svip-redpacket-top flex"},[s("div",{staticClass:"svip-redpacket-left flex"},[s("div",{staticClass:"redpacket-img"},[t.svip_redpacket.sid>0?s("img",{staticClass:"img-100",attrs:{src:t.svip_redpacket.logo,alt:""}}):s("img",{staticClass:"img-100",attrs:{src:"static/img/svip_redpacket.png",alt:""}})]),t._v(" "),s("div",{staticClass:"redpacket-info"},[s("div",{staticClass:"redpacket-title"},[t._v(t._s(t.svip_redpacket.title))]),t._v(" "),s("div",[s("span",{staticClass:"redpacket-tips"},[t._v("超级会员")]),t._v(" "),s("span",{staticClass:"font-12 c-gray"},[t._v(" 限会员有效期内使用")])])])]),t._v(" "),s("div",{staticClass:"svip-redpacket-right"},[s("div",{staticClass:"c-danger"},[s("div",{staticClass:"redpacket-money"},[s("span",{staticClass:"redpacket-unit"},[t._v("￥")]),t._v("\n\t\t\t\t\t\t\t\t\t\t\t"+t._s(t.svip_redpacket.discount)+"\n\t\t\t\t\t\t\t\t\t\t")])]),t._v(" "),0==t.svip_redpacket.condition?s("div",{staticClass:"font-12 c-gray"},[t._v("无门槛")]):t.svip_redpacket.condition>0?s("div",{staticClass:"font-12 c-gray"},[t._v("满"+t._s(t.svip_redpacket.condition)+"元")]):t._e()])]),t._v(" "),s("div",{staticClass:"svip-redpacket-line"},[s("div",{staticClass:"line"})]),t._v(" "),s("div",{staticClass:"svip-redpacket-bottom flex-lr"},[s("div",{staticClass:"font-12 c-gray"},[t._v(t._s(t.svip_redpacket.desc))]),t._v(" "),t.svip_redpacket.store_redpacket&&t.svip_redpacket.store_redpacket.id?s("div",{staticClass:"svip-redpacket-convert",on:{click:function(e){return t.onSelectRedpacket("svip_"+t.svip_redpacket.store_redpacket.id)}}},[t._v("立即使用")]):s("div",{staticClass:"svip-redpacket-convert",on:{click:function(e){return t.onSelectRedpacket(t.svip_redpacket.id)}}},[t._v("立即使用")])])])]):s("div",{staticClass:"svip-redpacket"},[s("div",{staticClass:"svip-redpacket-item"},[s("div",{staticClass:"svip-redpacket-top flex"},[s("div",{staticClass:"svip-redpacket-left flex"},[s("div",{staticClass:"redpacket-img"},[t.svip_redpacket.sid>0?s("img",{staticClass:"img-100",attrs:{src:t.svip_redpacket.logo,alt:""}}):s("img",{staticClass:"img-100",attrs:{src:"static/img/svip_redpacket.png",alt:""}})]),t._v(" "),s("div",{staticClass:"redpacket-info"},[s("div",{staticClass:"redpacket-title"},[t._v(t._s(t.svip_redpacket.title))]),t._v(" "),s("div",[s("span",{staticClass:"redpacket-tips"},[t._v("超级会员")]),t._v(" "),s("span",{staticClass:"font-12 c-gray"},[t._v(" 限"+t._s(t.svip_redpacket.endtime_cn)+"前领取")])])])]),t._v(" "),s("div",{staticClass:"svip-redpacket-right"},[s("div",{staticClass:"c-danger"},[s("div",{staticClass:"redpacket-money"},[s("span",{staticClass:"redpacket-unit"},[t._v("￥")]),t._v("\n\t\t\t\t\t\t\t\t\t\t\t"+t._s(t.svip_redpacket.discount)+"\n\t\t\t\t\t\t\t\t\t\t")])]),t._v(" "),0==t.svip_redpacket.condition?s("div",{staticClass:"font-12 c-gray"},[t._v("无门槛")]):t.svip_redpacket.condition>0?s("div",{staticClass:"font-12 c-gray"},[t._v("满"+t._s(t.svip_redpacket.condition)+"元")]):t._e()])]),t._v(" "),s("div",{staticClass:"svip-redpacket-line"},[s("div",{staticClass:"line"})]),t._v(" "),s("div",{staticClass:"svip-redpacket-bottom flex-lr"},[s("div",{staticClass:"font-12 c-gray"},[t._v(t._s(t.svip_redpacket.desc))]),t._v(" "),"take"==t.svip_redpacket.take_status?[s("div",{staticClass:"svip-redpacket-convert",on:{click:t.onConfirmSvipExchange}},[t._v("立即领取")])]:"exchange"==t.svip_redpacket.take_status?[s("div",{staticClass:"svip-redpacket-convert",on:{click:function(e){return t.onChangePopup("svipRedpacket")}}},[t._v("立即兑换")])]:t._e()],2)])])]:t._e(),t._v(" "),s("load",{attrs:{type:"loaded",text:"可用红包("+t.redPackets.length+"个)",bgcolor:"#f5f5f5"}}),t._v(" "),t._l(t.redPackets,function(e){return s("div",{staticClass:"redPacket-list content-padded"},[s("div",{staticClass:"redPacket-list-item",on:{click:function(s){return t.onSelectRedpacket(e.id)}}},[s("div",{staticClass:"redPacket-list-item-container"},[s("div",{staticClass:"redPacket-info row"},[s("div",{staticClass:"col-50"},[s("span",{staticClass:"redPacket-title"},[t._v(t._s(e.title))])]),t._v(" "),s("div",{staticClass:"col-50 text-right"},[s("div",{staticClass:"price"},[t._v("￥"),s("span",{staticClass:"price-num"},[t._v(t._s(e.discount))])])])]),t._v(" "),s("div",{staticClass:"redPacket-use-limit row"},[s("div",{staticClass:"col-60"},[t._v(t._s(e.day_cn))]),t._v(" "),s("div",{staticClass:"col-40 text-right"},[s("p",{staticClass:"use-condition"},[t._v("满"+t._s(e.condition)+"元可用")])])])]),t._v(" "),s("span",{staticClass:"circle circle-left"}),t._v(" "),s("span",{staticClass:"circle circle-right"}),t._v(" "),t.order.redpacket&&e.id==t.order.redpacket.id?s("div",{staticClass:"selected-status"},[s("img",{attrs:{src:"static/img/success.png",alt:""}})]):t._e()])])})],2),t._v(" "),s("div",{staticClass:"popup-cancle van-hairline--top",on:{click:function(e){return t.onSelectRedpacket(0)}}},[t._v("不使用红包")])])]):t._e(),t._v(" "),t.svip_redpacket&&"exchange"==t.svip_redpacket.take_status&&t.svip_redpacket.store_redpacket?s("van-popup",{model:{value:t.popup.svipRedpacket,callback:function(e){t.$set(t.popup,"svipRedpacket",e)},expression:"popup.svipRedpacket"}},[s("div",{staticClass:"popup-svipRedpacket"},[s("div",{staticClass:"svipRedpacket-wrap"},[s("div",{staticClass:"svipRedpacket-title"},[t._v("兑换¥"+t._s(t.svip_redpacket.store_redpacket.discount)+"店铺专享红包")]),t._v(" "),s("div",{staticClass:"margin-10-tb"},[s("span",{staticClass:"font-14 c-gray"},[t._v("本次兑换将消耗"),s("span",{staticClass:"c-danger"},[t._v("1个")]),t._v("「¥"+t._s(t.svip_redpacket.discount)+"会员红包」是否兑换？")])]),t._v(" "),s("div",{staticClass:"exchange-svipRedpacket"},[s("div",{staticClass:"exchange-start"},[s("span",{staticClass:"price"},[s("span",[t._v("￥")]),t._v(t._s(t.svip_redpacket.discount))]),t._v(" "),s("span",{staticClass:"font-12"},[t._v("会员专享")])]),t._v(" "),s("div",{staticClass:"exchange-course"},[s("img",{staticClass:"img-100",attrs:{src:"data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCA2MiAzMyI+PGRlZnM+PGxpbmVhckdyYWRpZW50IGlkPSJhIiB4MT0iNTAlIiB4Mj0iNTAlIiB5MT0iMTAwJSIgeTI9IjAlIj48c3RvcCBvZmZzZXQ9IjAlIiBzdG9wLWNvbG9yPSIjRkRGM0M3IiBzdG9wLW9wYWNpdHk9IjAiLz48c3RvcCBvZmZzZXQ9IjEwMCUiIHN0b3AtY29sb3I9IiNGNERFNzIiLz48L2xpbmVhckdyYWRpZW50PjwvZGVmcz48cGF0aCBmaWxsPSJ1cmwoI2EpIiBkPSJNMjQuNjcxIDIuNzZjMS4zMDcgNi41MTQgMi4wMzYgMTQuMzg3IDIuMTg3IDIzLjYxOS4xNSA5LjIzMi4yMDEgMTYuNDM4LjE1MyAyMS42Mmg5LjM2Yy44ODEtMy4xNTQgMS4zMjItMTAuNDIgMS4zMjItMjEuODAxIDAtMTEuMzgtLjEyLTE5LjE5My0uMzYtMjMuNDM4aDkuMTdhLjUuNSAwIDAgMCAuMzU2LS44NTFMMzEuMjg5LTEzLjg1YS41LjUgMCAwIDAtLjcxMy4wMDJMMTUuMTM2IDEuOTFhLjUuNSAwIDAgMCAuMzU3Ljg1aDkuMTc4eiIgdHJhbnNmb3JtPSJyb3RhdGUoOTAgMzEuMzI4IDE2LjY3KSIvPjwvc3ZnPg==",alt:""}})]),t._v(" "),s("div",{staticClass:"exchange-end"},[s("span",{staticClass:"exchange-end-price"},[s("span",[t._v("￥")]),t._v("\n\t\t\t\t\t\t\t"+t._s(t.svip_redpacket.store_redpacket.discount)+"\n\t\t\t\t\t\t")]),t._v(" "),s("span",{staticClass:"font-12"},[t._v(t._s(t.svip_redpacket.store_redpacket.title))])])]),t._v(" "),s("div",{staticClass:"svipRedpacket-button"},[s("van-button",{staticClass:"font-16",attrs:{size:"normal",block:""},on:{click:function(e){return t.onChangePopup("svipRedpacket")}}},[t._v("放弃优惠")]),t._v(" "),s("van-button",{staticClass:"bg-danger font-16",attrs:{size:"normal",block:""},on:{click:t.onConfirmSvipExchange}},[t._v("确认兑换")])],1)])])]):t._e(),t._v(" "),t.order.deliveryTimes.predict_day&&t.order.deliveryTimes&&t.order.deliveryTimes.times?s("van-popup",{attrs:{position:"bottom"},model:{value:t.popup.deliveryTime,callback:function(e){t.$set(t.popup,"deliveryTime",e)},expression:"popup.deliveryTime"}},[s("div",{staticClass:"popup-time"},[s("div",{staticClass:"popup-container"},[s("div",{staticClass:"left"},[t._l(t.order.deliveryTimes.days,function(e,i){return[s("div",{staticClass:"date-item van-hairline--bottom",class:{"van-hairline--right":t.order.deliveryTimes.predict_day!=e},on:{click:function(s){return t.onSelectDeliveryday(e)}}},[t._v(t._s(e))])]})],2),t._v(" "),s("div",{staticClass:"right"},[t.order.deliveryTimes.times[t.order.deliveryTimes.predict_day]&&t.order.deliveryTimes.times[t.order.deliveryTimes.predict_day].times?s("van-cell-group",[t._l(t.order.deliveryTimes.times[t.order.deliveryTimes.predict_day].times,function(e,i){return[s("van-cell",{class:{active:t.order.deliveryTimes.predict_index==i},on:{click:function(s){return t.onSelectDeliverytimes(e.time_cn,i)}}},[s("template",{slot:"title"},[t._v("\n\t\t\t\t\t\t\t\t\t"+t._s(e.time_cn)+t._s("立即送出"==e.time_cn?"("+e.start+"~"+e.end+")":"")+"\n\t\t\t\t\t\t\t\t")]),t._v(" "),s("template",{slot:"right-icon"},[t._v("\n\t\t\t\t\t\t\t\t\t"+t._s(1==t.order.order_type?e.total_delivery_price_cn:"")+"\n\t\t\t\t\t\t\t\t\t"),s("van-icon",{staticClass:"van-cell__right-icon",class:{active:t.order.deliveryTimes.predict_index==i},attrs:{name:"check"}})],1)],2)]})],2):t._e()],1)]),t._v(" "),s("div",{staticClass:"popup-cancle van-hairline--top",on:{click:function(e){return t.onChangePopup("deliveryTime")}}},[t._v("取消")])])]):t._e(),t._v(" "),s("van-submit-bar",{attrs:{disabled:!t.islegal,price:100*t.order.final_fee,label:"待支付","button-text":"提交订单"},on:{submit:t.onSubmit}},[s("div",{staticClass:"order-benefit",attrs:{slot:"default"},slot:"default"},[t._v("\n\t\t\t已优惠 ¥"+t._s(t.order.discount_fee)+"\n\t\t")]),t._v(" "),2==t.cart.bargain_use_limit?s("span",{attrs:{slot:"tip"},slot:"tip"},[s("span",[t._v("提示：折扣商品不与商户优惠活动（满减，代金券）同享")])]):1==t.order.order_type&&t.address&&t.address.address?s("span",{attrs:{slot:"tip"},slot:"tip"},[s("span",[t._v("收货地址："+t._s(t.address.address)+"-"+t._s(t.address.number))])]):t._e()]),t._v(" "),s("transition",{attrs:{name:"loading"}},[t.showPreLoading?s("iloading"):t._e()],1),t._v(" "),t._e()],1)},staticRenderFns:[function(){var t=this.$createElement,e=this._self._c||t;return e("div",{staticClass:"divide"},[e("div",{staticClass:"divide-line"})])},function(){var t=this.$createElement,e=this._self._c||t;return e("div",{staticClass:"divide"},[e("div",{staticClass:"divide-line"})])},function(){var t=this.$createElement,e=this._self._c||t;return e("div",{staticClass:"main-desc "},[e("span",{staticClass:"font-bold font-16"},[this._v("成为超级会员, 本单享优惠 ")]),this._v(" "),e("i",{staticClass:"icon icon-question1 font-14"})])}]};var k=s("VU/8")(C,y,!1,function(t){s("Gxs1")},null,null);e.default=k.exports}});