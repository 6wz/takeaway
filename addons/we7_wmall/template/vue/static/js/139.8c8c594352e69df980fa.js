webpackJsonp([139],{"0LPt":function(t,s){},DHT1:function(t,s,a){"use strict";Object.defineProperty(s,"__esModule",{value:!0});var o=a("Gu7T"),i=a.n(o),n=a("Cz8s"),e=a("KgXo"),c={data:function(){return{coupons:{loading:!1,finished:!1,status:1,data:[]},showLoading:!0}},components:{PublicHeader:n.a,loading:e.a},watch:{$route:function(t,s){this.showLoading=!0,this.coupons={loading:!1,finished:!1,status:1,data:[]},this.$route.query.status&&(this.coupons.status=this.$route.query.status),this.onLoad()}},methods:{onLoad:function(){var t=this;if(this.coupons.finished)return!1;this.util.request({url:"wmall/member/coupon",data:{min:this.coupons.min,status:this.coupons.status}}).then(function(s){var a=s.data.message;t.coupons.data=[].concat(i()(t.coupons.data),i()(a.message)),t.hideLoading(),a.message.length<6&&(t.coupons.finished=!0),t.coupons.loading=!1,t.coupons.min=a.min,a.min||(t.coupons.finished=!0)})},hideLoading:function(){this.showLoading=!1}},mounted:function(){this.$route.query.status&&(this.coupons.status=this.$route.query.status),this.onLoad()}},u={render:function(){var t=this,s=t.$createElement,a=t._self._c||s;return a("div",{attrs:{id:"coupon"}},[a("public-header",{attrs:{title:"我的代金券"}}),t._v(" "),a("div",{staticClass:"content"},[t.showLoading?t._e():[a("div",{staticClass:"coupon-list"},[t.coupons.data.length>0?a("van-list",{attrs:{finished:t.coupons.finished,offset:100,"immediate-check":!1},on:{load:t.onLoad},model:{value:t.coupons.loading,callback:function(s){t.$set(t.coupons,"loading",s)},expression:"coupons.loading"}},[t._l(t.coupons.data,function(s,o){return a("div",{staticClass:"content-padded"},[a("div",{staticClass:"coupon-item"},[a("router-link",{attrs:{to:""}},[a("div",{staticClass:"clearfix"},[a("span",{staticClass:"circle circle-left"}),t._v(" "),a("span",{staticClass:"circle circle-right"}),t._v(" "),3==s.status?a("span",{staticClass:"overdue"}):t._e(),t._v(" "),2==s.status?a("span",{staticClass:"use"}):t._e(),t._v(" "),a("div",{staticClass:"left"},[a("div",{staticClass:"store-logo"},[a("img",{attrs:{src:s.logo,alt:""}})]),t._v(" "),a("div",{staticClass:"coupon-detail"},[a("div",{staticClass:"coupon-title"},[t._v(t._s(s.title))]),t._v(" "),a("div",{staticClass:"use-time"},[t._v("有效期至:"+t._s(s.endtime))])])]),t._v(" "),a("div",{staticClass:"right"},[a("div",{staticClass:"price"},[a("span",[t._v("￥")]),t._v(t._s(s.discount)+"\n\t\t\t\t\t\t\t\t\t\t")]),t._v(" "),a("div",{staticClass:"condition"},[t._v("满"+t._s(s.condition)+"元可用")])])])])],1)])}),t._v(" "),t.coupons.finished?a("div",{staticClass:"no-more"},[a("span",{staticClass:"no-more-a",attrs:{to:""}},[t._v("没有更多了")]),t._v(" "),"1"==t.coupons.status?[t.coupons.finished?a("span",[t._v("|")]):t._e(),t._v(" "),a("router-link",{staticClass:"no-more-a",attrs:{to:t.util.getUrl({path:"/pages/member/coupon/index?status=2"})}},[t._v("查看无效券")])]:t._e()],2):t._e()],2):a("div",{staticClass:"common-no-con"},[a("img",{attrs:{src:"static/img/coupon_no_con.png",alt:""}}),t._v(" "),a("p",[t._v("您没有代金券")]),t._v(" "),a("div",{staticClass:"btn"},[a("router-link",{staticClass:"btn-a",attrs:{to:t.util.getUrl({path:"/pages/channel/coupon"})}},[t._v("去领券中心看看")])],1)])],1)],t._v(" "),a("div",{staticClass:"coupon-more"},[a("router-link",{staticClass:"coupon-more-a",attrs:{to:t.util.getUrl({path:"/pages/channel/coupon"})}},[t._v("更多好券,去领券中心看看")])],1)],2),t._v(" "),a("transition",{attrs:{name:"loading"}},[a("iloading",{directives:[{name:"show",rawName:"v-show",value:t.showLoading,expression:"showLoading"}]})],1)],1)},staticRenderFns:[]};var l=a("VU/8")(c,u,!1,function(t){a("0LPt")},"data-v-3a562a6e",null);s.default=l.exports}});