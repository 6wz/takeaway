webpackJsonp([14],{HzKn:function(t,e,a){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var i=a("mvHQ"),s=a.n(i),r=a("Dd8w"),n=a.n(r),o=a("Cz8s"),l=a("NYxO"),d=a("deIj"),c={components:{PublicHeader:o.a},data:function(){return{team_id:0,showPreLoading:!0,detail:{},order:{remark:""}}},computed:n()({},Object(l.c)(["pinTuanExtra"])),methods:n()({},Object(l.b)(["setState"]),{onLoad:function(){var t=this;Object(d.a)({vue:t,url:"pintuan/create/index",data:{id:t.id,team_id:t.team_id,is_team:t.is_team,extra:t.pinTuanExtra},success:function(e){t.detail=e.goods,t.order=e.order,t.order.goods_num<t.pinTuanExtra.goods_num&&t.util.$toast("本次活动限购"+t.order.goods_num+t.detail.unit,"",1e3)},fail:function(e){if(-1001==e.errno){var a=e.message;t.util.$toast("您已参加该活动,请等待本次团购结束后在进行开团",t.util.getUrl({path:"/gohome/pages/pintuan/share",query:{id:a.goods_id,team_id:a.team_id}}),1e3,"replace")}else-1e3==e.errno?t.$router.push(t.util.getUrl({path:"/gohome/pages/pintuan/detail",query:{id:t.id}})):t.util.$toast(e.message,t.util.getUrl({path:"/gohome/pages/pintuan/index"}),1e3,"replace")}})},onCalculate:function(){if(this.pinTuanExtra.goods_num=this.order.goods_num,this.detail.total>0&&this.order.goods_num>=this.detail.total)return this.pinTuanExtra.goods_num=this.order.goods_num=this.detail.total,void this.util.$toast("商品库存不足","",1e3);this.onLoad()},onSubmit:function(){var t=this;t.order.mobile?t.util.isValidMobile(t.order.mobile)?(t.pinTuanExtra.username=t.order.username,t.pinTuanExtra.mobile=t.order.mobile,t.pinTuanExtra.remark=t.order.remark,t.pinTuanExtra.is_team=t.is_team,Object(d.c)({vue:t,url:"pintuan/create/create",data:{id:t.id,team_id:t.team_id,extra:s()(t.pinTuanExtra)},success:function(e){t.pinTuanExtra={};var a=0;1==t.is_team&&(a=t.team_id>0?t.team_id:e),t.util.$toast("下单成功",t.util.getUrl({path:"/pages/public/pay",query:{order_id:e,order_type:"gohome",extra:{order_type:"pintuan",goods_id:t.id,is_team:t.is_team,team_id:a}}}),1e3,"replace")}})):t.util.$toast("手机号格式错误"):t.util.$toast("请输入预留手机号")}}),created:function(){this.uid=0,this.query=this.$route.query,this.query&&(this.is_team=0,this.query.team_id>0&&(this.team_id=this.query.team_id,this.is_team=1),this.query.id>0&&(this.id=this.query.id),1==this.query.is_team&&(this.is_team=this.query.is_team))},mounted:function(){this.onLoad()}},u={render:function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{attrs:{id:"pintuan-order-create"}},[a("public-header",{attrs:{title:"确认订单"}}),t._v(" "),a("div",{staticClass:"content "},[a("div",{staticClass:"content-scroll"},[a("div",{staticClass:"delivery-info margin-10-b bg-default radius-3"},[t._e(),t._v(" "),a("div",{staticClass:"padding-15-lr"},[a("div",{staticClass:"padding-15-tb flex-lr"},[t.order.store?a("div",{staticClass:"flex"},[a("i",{staticClass:"icon icon-locationfill font-20",on:{click:function(e){return t.util.jsLocation({lat:t.order.store.location_x,lng:t.order.store.location_y,address:t.order.store.address})}}}),t._v(" "),a("ul",{staticClass:" padding-10-l"},[a("li",{staticClass:"font-14"},[t._v(t._s(t.order.store.address))]),t._v(" "),a("li",{staticClass:"c-gray font-12 margin-5-t",on:{click:function(e){return t.util.jsTel(t.order.store.telephone)}}},[t._v(t._s(t.order.store.telephone))])])]):t._e(),t._v(" "),a("van-icon",{staticClass:"c-gray margin-10-l",attrs:{name:"arrow"}})],1),t._v(" "),a("div",{staticClass:"flex-lr van-hairline--top"},[a("ul",{staticClass:"username-mobile flex-lr font-13 padding-15-tb"},[a("li",{staticClass:"van-hairline--right"},[a("div",{staticClass:"margin-10-b"},[t._v("姓名")]),t._v(" "),a("input",{directives:[{name:"model",rawName:"v-model",value:t.order.username,expression:"order.username"}],staticClass:"w-100",attrs:{type:"text",placeholder:"请输入自提人姓名"},domProps:{value:t.order.username},on:{input:function(e){e.target.composing||t.$set(t.order,"username",e.target.value)}}})]),t._v(" "),a("li",{staticClass:"padding-10-l"},[a("div",{staticClass:"margin-10-b"},[t._v("手机号")]),t._v(" "),a("input",{directives:[{name:"model",rawName:"v-model",value:t.order.mobile,expression:"order.mobile"}],staticClass:"w-100",attrs:{type:"text",placeholder:"请输入预留手机号"},domProps:{value:t.order.mobile},on:{input:function(e){e.target.composing||t.$set(t.order,"mobile",e.target.value)}}})])])]),t._v(" "),t._e()])]),t._v(" "),a("div",{staticClass:"order-info"},[t.order.store?a("div",{staticClass:"flex"},[a("i",{staticClass:"icon icon-store font-18"}),t._v(" "),a("span",{staticClass:"font-14 margin-10-l font-500"},[t._v(t._s(t.order.store.title))])]):t._e(),t._v(" "),a("div",{staticClass:"padding-15-tb goods flex-lr van-hairline--bottom"},[a("div",{staticClass:"thumb"},[a("img",{staticClass:"img-100",attrs:{src:t.detail.thumb,alt:""}})]),t._v(" "),a("div",{staticClass:"info"},[a("p",[t._v(t._s(t.detail.name))]),t._v(" "),a("div",{staticClass:"flex"},[a("div",{staticClass:"c-danger font-16 font-bold"},[t._v("¥"+t._s(t.is_team?t.detail.price:t.detail.aloneprice))]),t._v(" "),a("div",{staticClass:"c-gray font-12 line-through margin-5-l"},[t._v("¥"+t._s(t.detail.oldprice))])])])]),t._v(" "),1==t.detail.buylimit?a("div",{staticClass:"van-hairline--bottom padding-15-b font-13"},[a("div",{staticClass:"margin-15-t flex-lr"},[a("span",[t._v("数量")]),t._v(" "),a("span",[t._v(t._s(t.order.goods_num))])]),t._v(" "),a("div",{staticClass:"margin-15-t flex-lr"},[a("span",[t._v("总价")]),t._v(" "),a("span",{staticClass:"c-danger"},[t._v("¥"+t._s(t.order.goods_price))])])]):a("div",{staticClass:"van-hairline--bottom padding-15-b font-13"},[a("div",{staticClass:"margin-15-t flex-lr"},[a("span",[t._v("数量")]),t._v(" "),a("van-stepper",{attrs:{integer:"",min:1},on:{change:function(e){return t.onCalculate()}},model:{value:t.order.goods_num,callback:function(e){t.$set(t.order,"goods_num",e)},expression:"order.goods_num"}})],1),t._v(" "),a("div",{staticClass:"margin-15-t flex-lr"},[a("span",[t._v("总价")]),t._v(" "),a("span",{staticClass:"c-danger"},[t._v("¥"+t._s(t.order.goods_price))])])]),t._v(" "),t._e(),t._v(" "),a("div",{staticClass:"padding-15-t total-price"},[a("div",[t._v("\n\t\t\t\t\t\t已优惠 "),a("span",{staticClass:"c-danger"},[t._v("¥"+t._s(t.order.discount))])]),t._v(" "),a("div",{staticClass:"margin-15-l"},[a("span",[t._v("小计")]),t._v(" "),a("span",{staticClass:"c-danger font-16 font-500"},[t._v("¥"+t._s(t.order.final_fee))])])])],2),t._v(" "),a("van-field",{staticClass:"margin-10-t",attrs:{label:"备注",type:"textarea",placeholder:"请输入备注",rows:"2"},model:{value:t.order.remark,callback:function(e){t.$set(t.order,"remark",e)},expression:"order.remark"}})],1)]),t._v(" "),a("van-submit-bar",{attrs:{price:100*t.order.final_fee,label:"待支付","button-text":"提交订单"},on:{submit:t.onSubmit}},[a("div",{staticClass:"order-benefit",attrs:{slot:"default"},slot:"default"},[t._v("\n\t\t\t已优惠 ¥"+t._s(t.order.discount)+"\n\t\t")]),t._v(" "),t._e()]),t._v(" "),t.showPreLoading?a("iloading"):t._e()],1)},staticRenderFns:[function(){var t=this.$createElement,e=this._self._c||t;return e("div",{staticClass:"flex"},[e("i",{staticClass:"icon icon-timefill font-18"}),this._v(" "),e("span",{staticClass:"padding-10-l font-14"},[this._v("立即送出")])])},function(){var t=this.$createElement,e=this._self._c||t;return e("div",{staticClass:"van-hairline--bottom padding-15-b font-13"},[e("div",{staticClass:"margin-15-t flex-lr"},[e("span",[this._v("包装费")]),this._v(" "),e("span",[this._v("¥2")])]),this._v(" "),e("div",{staticClass:"margin-15-t flex-lr"},[e("span",[this._v("配送费")]),this._v(" "),e("span",[this._v("¥2")])])])},function(){var t=this.$createElement,e=this._self._c||t;return e("div",{staticClass:"padding-15-tb flex-lr van-hairline--bottom font-13"},[e("div",{staticClass:"c-danger"},[this._v("新客立减")]),this._v(" "),e("div",{staticClass:"c-danger"},[this._v("-¥2")])])}]};var _=a("VU/8")(c,u,!1,function(t){a("eLs8")},null,null);e.default=_.exports},eLs8:function(t,e){}});