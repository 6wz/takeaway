webpackJsonp([59],{"7WNn":function(t,s){},cP2l:function(t,s,a){"use strict";Object.defineProperty(s,"__esModule",{value:!0});var i=a("Cz8s"),e=a("deIj"),o={components:{PublicHeader:i.a},data:function(){return{goods_id:0,goods:{name:"",thumb:"",endtime:0,store:{},is_favor:!1,buy_note:"",description:"",total_looknum:0,total_sharenum:0,slides:[],price:0},goodsNum:1,username:"",mobile:"",buyremark:"",showPreLoading:!0,islegal:!1}},methods:{onLoad:function(){var t=this;Object(e.a)({vue:t,url:"seckill/order/create",data:{goods_id:t.goods_id},autoAssign:!0,variable:"goods",success:function(s){t.islegal=!0,t.username=s.member.username,t.mobile=s.member.mobile}})},onCalculate:function(){if(this.goods.total>0&&this.goodsNum>=this.goods.total)return this.goodsNum=this.goods.total,void this.util.$toast("数量已达上限","",1e3)},onSubmit:function(){var t=this;!t.goodsNum<=0?t.util.$toast("请选择购买数量"):t.username?t.mobile?t.util.isValidMobile(t.mobile)?Object(e.c)({vue:t,url:"seckill/order/create",data:{goods_id:t.goods_id,buyremark:t.buyremark,username:t.username,mobile:t.mobile,goods_num:t.goodsNum},message:"下单成功",success:function(s){var a=s;t.util.$toast("下单成功",t.util.getUrl({path:"/pages/public/pay",query:{order_id:a,order_type:"gohome"}}),1500,"replace")}}):t.util.$toast("手机号格式错误"):t.util.$toast("请输入预留手机号"):t.util.$toast("请输入核销人姓名")}},mounted:function(){this.$route.query&&this.$route.query.goods_id&&(this.goods_id=this.$route.query.goods_id),this.onLoad()},computed:{totalPrice:function(){var t=this.goods.price*this.goodsNum;return t=t.toFixed(2),t},totalPrice1:function(){var t=this.goods.price*this.goodsNum*100;return t=parseFloat(t.toFixed(2)),t}}},l={render:function(){var t=this,s=t.$createElement,a=t._self._c||s;return a("div",{attrs:{id:"seckill-order-create"}},[a("public-header",{attrs:{title:"确认订单"}}),t._v(" "),a("div",{staticClass:"content "},[a("div",{staticClass:"content-scroll"},[a("div",{staticClass:"delivery-info margin-10-b bg-default radius-3"},[t._e(),t._v(" "),a("div",[a("div",{staticClass:"padding-15-lr padding-15-t font-18 font-bold"},[t._v("到店核销")]),t._v(" "),a("div",{staticClass:"padding-15-tb margin-15-lr van-hairline--bottom text-center"},[a("p",{staticClass:"font-14 c-gray"},[t._v("商家地址")]),t._v(" "),a("p",{staticClass:"margin-10-tb"},[t._v(t._s(t.goods.store.address))]),t._v(" "),t.goods.store?a("span",{staticClass:"font-14 c-danger",on:{click:function(s){return t.util.jsLocation({lat:t.goods.store.location_x,lng:t.goods.store.location_y})}}},[t._v("查看地图")]):t._e()]),t._v(" "),a("ul",{staticClass:"username-mobile flex-lr font-13 padding-15-tb margin-15-lr"},[a("li",{staticClass:"van-hairline--right"},[a("div",{staticClass:"margin-10-b"},[t._v("姓名")]),t._v(" "),a("input",{directives:[{name:"model",rawName:"v-model",value:t.username,expression:"username"}],staticClass:"w-100",attrs:{type:"text",placeholder:"请输入姓名"},domProps:{value:t.username},on:{input:function(s){s.target.composing||(t.username=s.target.value)}}})]),t._v(" "),a("li",{staticClass:"padding-10-l"},[a("div",{staticClass:"margin-10-b"},[t._v("手机号")]),t._v(" "),a("input",{directives:[{name:"model",rawName:"v-model",value:t.mobile,expression:"mobile"}],staticClass:"w-100",attrs:{type:"text",placeholder:"请输入手机号"},domProps:{value:t.mobile},on:{input:function(s){s.target.composing||(t.mobile=s.target.value)}}})])])])]),t._v(" "),a("div",{staticClass:"order-info"},[a("div",{staticClass:"flex"},[a("i",{staticClass:"icon icon-store font-18"}),t._v(" "),a("span",{staticClass:"font-14 margin-10-l font-500"},[t._v(t._s(t.goods.store.title))])]),t._v(" "),a("div",{staticClass:"padding-15-tb goods flex-lr van-hairline--bottom"},[a("div",{staticClass:"thumb"},[a("img",{staticClass:"img-100",attrs:{src:t.goods.thumb,alt:""}})]),t._v(" "),a("div",{staticClass:"info"},[a("p",[t._v(t._s(t.goods.name))]),t._v(" "),a("div",{staticClass:"flex"},[a("div",{staticClass:"c-danger font-16 font-bold"},[t._v("¥"+t._s(t.goods.price))]),t._v(" "),a("div",{staticClass:"c-gray font-12 line-through margin-5-l"},[t._v("¥"+t._s(t.goods.oldprice))])])])]),t._v(" "),a("div",{staticClass:"van-hairline--bottom padding-15-b font-13"},[a("div",{staticClass:"margin-15-t flex-lr"},[a("span",[t._v("数量")]),t._v(" "),a("van-stepper",{attrs:{min:1,max:-1==t.goods.total?1e7:t.goods.total,integer:""},on:{change:t.onCalculate},model:{value:t.goodsNum,callback:function(s){t.goodsNum=s},expression:"goodsNum"}})],1),t._v(" "),a("div",{staticClass:"margin-15-t flex-lr"},[a("span",[t._v("总价")]),t._v(" "),a("span",{staticClass:"c-danger"},[t._v("¥"+t._s(t.totalPrice))])])]),t._v(" "),t._e(),t._v(" "),t._e(),t._v(" "),t._e(),t._v(" "),a("div",{staticClass:"padding-15-t total-price"},[a("div",{staticClass:"margin-15-l"},[a("span",[t._v("小计")]),t._v(" "),a("span",{staticClass:"c-danger font-16 font-500"},[t._v("¥"+t._s(t.totalPrice))])])])]),t._v(" "),a("van-field",{staticClass:"margin-10-t",attrs:{label:"备注",type:"textarea",placeholder:"口味, 偏好等要求",rows:"3"},model:{value:t.buyremark,callback:function(s){t.buyremark=s},expression:"buyremark"}})],1)]),t._v(" "),a("van-submit-bar",{attrs:{price:t.totalPrice1,label:"待支付","button-text":"提交订单",disabled:!t.islegal},on:{submit:t.onSubmit}}),t._v(" "),t.showPreLoading?a("iloading"):t._e()],1)},staticRenderFns:[function(){var t=this.$createElement,s=this._self._c||t;return s("div",{staticClass:"flex"},[s("i",{staticClass:"icon icon-locationfill font-20"}),this._v(" "),s("ul",{staticClass:" padding-10-l"},[s("li",{staticClass:"font-14"},[this._v("山西省太原市小店区坞城街道南中环北张小区B2-401")]),this._v(" "),s("li",{staticClass:"c-gray font-12 margin-5-t"},[this._v("李四（先生） 121345678910")])])])},function(){var t=this.$createElement,s=this._self._c||t;return s("div",{staticClass:"flex"},[s("i",{staticClass:"icon icon-timefill font-18"}),this._v(" "),s("span",{staticClass:"padding-10-l font-14"},[this._v("立即送出")])])},function(){var t=this.$createElement,s=this._self._c||t;return s("div",{staticClass:"margin-15-t flex-lr"},[s("span",[this._v("包装费")]),this._v(" "),s("span",[this._v("¥2")])])},function(){var t=this.$createElement,s=this._self._c||t;return s("div",{staticClass:"margin-15-t flex-lr"},[s("span",[this._v("配送费")]),this._v(" "),s("span",[this._v("¥2")])])}]};var n=a("VU/8")(o,l,!1,function(t){a("7WNn")},null,null);s.default=n.exports}});