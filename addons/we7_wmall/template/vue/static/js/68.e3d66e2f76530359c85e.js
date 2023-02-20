webpackJsonp([68],{"2mgH":function(t,a){},mWB9:function(t,a,s){"use strict";Object.defineProperty(a,"__esModule",{value:!0});var e=s("Cz8s"),n=s("mzkE"),i={components:{PublicHeader:e.a,PublicFooter:n.a},data:function(){return{showPreLoading:!0,agreementShow:!1,year:"",month:"",calendar:[],continuous_get:[],all_get:[],order_days_amount:{},member:{},config_ordergrant:{},grantType:"",menufooter:{}}},methods:{onLoad:function(){var t=this;this.util.request({url:"ordergrant/index",data:{menufooter:1}}).then(function(a){t.showPreLoading=!1;var s=a.data.message.message;t.year=s.year,t.month=s.month,t.calendar=s.calendar,t.continuous_get=s.continuous_get,t.all_get=s.all_get,t.order_days_amount=s.order_days_amount,t.member=s.member,t.config_ordergrant=s.config_ordergrant,t.grantType=s.grantType,t.menufooter=window.menufooter})},onGetReward:function(t,a,s,e){var n=this;if(!t||!a)return this.$toast("您还没有达到领取该奖励的条件"),!1;this.util.request({url:"ordergrant/index/get",data:{days:a,type:t},method:"POST"}).then(function(i){n.$toast(i.data.message.message),1==s&&(1==t?(n.config_ordergrant.continuous[e].status=2,n.continuous_get[a]={days:a}):2==t&&(n.config_ordergrant.all[e].status=2,n.all_get[a]={days:a}))})},onDayClick:function(t,a){var s=this,e=t-(new Date).getDate();this.util.request({url:"ordergrant/index/next",data:{difference:e,grant:a}}).then(function(t){s.$dialog.alert({message:t.data.message.message,showConfirmButton:!1,closeOnClickOverlay:!0})})}},mounted:function(){this.onLoad()}},r={render:function(){var t=this,a=t.$createElement,s=t._self._c||a;return s("div",{attrs:{id:"ordergrant-index"}},[s("public-header",{attrs:{title:"下单有礼"}}),t._v(" "),s("public-footer",{attrs:{preLoading:t.showPreLoading,menufooter:t.menufooter}}),t._v(" "),s("div",{staticClass:"content"},[s("div",{staticClass:"banner"},[s("div",{staticClass:"avatar"},[s("img",{attrs:{src:t.member.avatar,alt:""}})]),t._v(" "),s("router-link",{staticClass:"detail",attrs:{to:t.util.getUrl({path:"/package/pages/ordergrant/record"})}},[t._v("详细记录")]),t._v(" "),s("div",{staticClass:"agreement",on:{click:function(a){t.agreementShow=!0}}},[t._v("活动规则")]),t._v(" "),s("div",{staticClass:"gutter"},[s("div",{staticClass:"col-33"},[s("div",{staticClass:"titles"},[t._v("连续下单")]),t._v(" "),s("div",{staticClass:"days"},[t._v(t._s(t.order_days_amount.continuous)+"天")])]),t._v(" "),s("div",{staticClass:"col-33"},[s("div",{staticClass:"titles"},[t._v(t._s(t.member.nickname))])]),t._v(" "),s("div",{staticClass:"col-33"},[s("div",{staticClass:"titles"},[t._v("累计下单")]),t._v(" "),s("div",{staticClass:"days"},[t._v(t._s(t.order_days_amount.sum)+"天")])])])],1),t._v(" "),s("div",{staticClass:"calendar"},[s("div",{staticClass:"titles"},[s("van-icon",{staticClass:"icon",attrs:{name:"calendar"}}),t._v("\n\t\t\t\t"+t._s(t.year)+"年"+t._s(t.month)+"月\n\t\t\t")],1),t._v(" "),s("div",{staticClass:"calendar-inner"},t._l(t.calendar,function(a){return s("div",{staticClass:"week"},t._l(a,function(a){return s("div",{staticClass:"day",class:{today:a.today},on:{click:function(s){return t.onDayClick(a.day,a.grant)}}},[s("p",{staticClass:"num"},[t._v(t._s(a.day?a.day:""))]),t._v(" "),s("p",{staticClass:"grant"},[a.grant?s("van-icon",{staticClass:"icon",attrs:{name:"recharge"}}):t._e(),t._v(t._s(a.grant))],1),t._v(" "),a.title?s("p",{staticClass:"special"},[t._v(t._s(a.title))]):t._e(),t._v(" "),a.signed?s("van-icon",{class:{sigend:a.signed},attrs:{name:"check"}}):t._e()],1)}),0)}),0)]),t._v(" "),s("div",{staticClass:"reward-container"},[s("div",{staticClass:"titles"},[s("span",{staticClass:"text"},[s("van-icon",{staticClass:"icon",attrs:{name:"gifts"}}),t._v(" 连续下单有礼")],1),t._v(" "),s("span",{staticClass:"subtitle pull-right"},[t._v("连续下单即可领取")])]),t._v(" "),s("div",{staticClass:"reward-inner"},[s("div",{staticClass:"award"},[s("div",{staticClass:"award-list"},t._l(t.config_ordergrant.continuous,function(a,e){return s("div",{staticClass:"item",class:{active:t.continuous_get[a.days]}},[s("div",{staticClass:"grant"},[t._v("+"+t._s(a.grant)),s("br"),t._v(t._s(t.grantType))]),t._v(" "),s("div",{staticClass:"circle",class:{active:2==a.status}},[s("i",{staticClass:"icon icon-check"})]),t._v(" "),s("div",{staticClass:"days"},[t._v(t._s(a.days)+"天")]),t._v(" "),a.status?t._e():s("div",{staticClass:"text",on:{click:function(a){return t.onGetReward()}}},[t._v("不可领")]),t._v(" "),1==a.status?s("div",{staticClass:"text",on:{click:function(s){return t.onGetReward(1,a.days,a.status,e)}}},[t._v("可领取")]):t._e(),t._v(" "),2==a.status?s("div",{staticClass:"text",on:{click:function(s){return t.onGetReward(1,a.days,a.status,e)}}},[t._v("已领取")]):t._e()])}),0)])])]),t._v(" "),s("div",{staticClass:"reward-container"},[s("div",{staticClass:"titles"},[s("span",{staticClass:"text"},[s("van-icon",{staticClass:"icon",attrs:{name:"gifts"}}),t._v(" 累计下单有礼")],1),t._v(" "),s("span",{staticClass:"subtitle pull-right"},[t._v("累计下单满足即可领取")])]),t._v(" "),s("div",{staticClass:"reward-inner"},[s("div",{staticClass:"award"},[s("div",{staticClass:"award-list"},t._l(t.config_ordergrant.all,function(a,e){return s("div",{staticClass:"item",class:{active:t.all_get[a.days]}},[s("div",{staticClass:"grant"},[t._v("+"+t._s(a.grant)),s("br"),t._v(t._s(t.grantType))]),t._v(" "),s("div",{staticClass:"circle",class:{active:2==a.status}},[s("i",{staticClass:"icon icon-check"})]),t._v(" "),s("div",{staticClass:"days"},[t._v(t._s(a.days)+"天")]),t._v(" "),a.status?t._e():s("div",{staticClass:"text",on:{click:function(a){return t.onGetReward()}}},[t._v("不可领")]),t._v(" "),1==a.status?s("div",{staticClass:"text",on:{click:function(s){return t.onGetReward(2,a.days,a.status,e)}}},[t._v("可领取")]):t._e(),t._v(" "),2==a.status?s("div",{staticClass:"text",on:{click:function(s){return t.onGetReward(2,a.days,a.status,e)}}},[t._v("已领取")]):t._e()])}),0)])])])]),t._v(" "),s("van-popup",{staticClass:"agreement-popup",attrs:{position:"bottom"},model:{value:t.agreementShow,callback:function(a){t.agreementShow=a},expression:"agreementShow"}},[s("van-nav-bar",{staticClass:"border-0px",style:{background:"#ff2d4b",color:"#fff"},attrs:{title:"规则详解"},on:{"click-left":function(a){t.agreementShow=!1}}},[s("van-icon",{staticClass:"font-20",style:{color:"#fff"},attrs:{slot:"left",name:"left"},slot:"left"})],1),t._v(" "),s("div",{staticClass:"popup-content margin-10",domProps:{innerHTML:t._s(t.config_ordergrant.agreement)}})],1)],1)},staticRenderFns:[]};var c=s("VU/8")(i,r,!1,function(t){s("2mgH")},null,null);a.default=c.exports}});