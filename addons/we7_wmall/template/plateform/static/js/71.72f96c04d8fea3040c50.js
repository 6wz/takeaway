webpackJsonp([71],{AzEF:function(t,e){},Cu7r:function(t,e,i){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var r=i("Cz8s"),o=i("deIj"),s={data:function(){return{showPreLoading:!0,order:{pay_time_limit:"0",pay_time_notice:"0",handle_time_limit:"0",deliveryer_collect_time_limit:"0",auto_success_hours:"0",timeout_limit:"0",delivery_before_limit:"0",delivery_timeout_limit:"0",delivery_status_3:{timeout_limit:"0"}}}},components:{publicHeader:r.a},methods:{onLoad:function(){Object(o.a)({vue:this,autoAssign:!0,variable:"order",url:"plateform/config/takeout/order"})},onSubmit:function(){Object(o.c)({vue:this,url:"plateform/config/takeout/order",data:this.order})}},mounted:function(){this.onLoad()}},l={render:function(){var t=this,e=t.$createElement,i=t._self._c||e;return i("div",{attrs:{id:"takeout-timelimit"}},[i("public-header",{attrs:{title:"时限要求"}}),t._v(" "),i("div",{staticClass:"content"},[i("van-cell-group",[i("van-cell",[i("div",{attrs:{slot:"title"},slot:"title"},[t._v("支付时间限制")]),t._v(" "),i("div",{attrs:{slot:"right-icon"},slot:"right-icon"},[i("div",{staticClass:"input-unit"},[i("input",{directives:[{name:"model",rawName:"v-model",value:t.order.pay_time_limit,expression:"order.pay_time_limit"}],attrs:{type:"number"},domProps:{value:t.order.pay_time_limit},on:{input:function(e){e.target.composing||t.$set(t.order,"pay_time_limit",e.target.value)}}}),i("span",[t._v("分")])])])]),t._v(" "),i("van-cell",[i("div",{attrs:{slot:"title"},slot:"title"},[t._v("未支付提醒")]),t._v(" "),i("div",{attrs:{slot:"right-icon"},slot:"right-icon"},[i("div",{staticClass:"input-unit"},[i("input",{directives:[{name:"model",rawName:"v-model",value:t.order.pay_time_notice,expression:"order.pay_time_notice"}],attrs:{type:"number"},domProps:{value:t.order.pay_time_notice},on:{input:function(e){e.target.composing||t.$set(t.order,"pay_time_notice",e.target.value)}}}),i("span",[t._v("分")])])])])],1),t._v(" "),i("van-cell-group",{staticClass:"margin-10-t"},[i("van-cell",[i("div",{attrs:{slot:"title"},slot:"title"},[t._v("商家接单时间限制")]),t._v(" "),i("div",{attrs:{slot:"right-icon"},slot:"right-icon"},[i("div",{staticClass:"input-unit"},[i("input",{directives:[{name:"model",rawName:"v-model",value:t.order.handle_time_limit,expression:"order.handle_time_limit"}],attrs:{type:"number"},domProps:{value:t.order.handle_time_limit},on:{input:function(e){e.target.composing||t.$set(t.order,"handle_time_limit",e.target.value)}}}),i("span",[t._v("分")])])])]),t._v(" "),i("van-cell",[i("div",{attrs:{slot:"title"},slot:"title"},[t._v("配送员接单时间限制")]),t._v(" "),i("div",{attrs:{slot:"right-icon"},slot:"right-icon"},[i("div",{staticClass:"input-unit"},[i("input",{directives:[{name:"model",rawName:"v-model",value:t.order.deliveryer_collect_time_limit,expression:"order.deliveryer_collect_time_limit"}],attrs:{type:"number"},domProps:{value:t.order.deliveryer_collect_time_limit},on:{input:function(e){e.target.composing||t.$set(t.order,"deliveryer_collect_time_limit",e.target.value)}}}),i("span",[t._v("分")])])])])],1),t._v(" "),i("van-cell-group",{staticClass:"margin-10-t"},[i("van-cell",[i("div",{attrs:{slot:"title"},slot:"title"},[t._v("外卖订单自动完成(已接单订单)")]),t._v(" "),i("div",{attrs:{slot:"right-icon"},slot:"right-icon"},[i("div",{staticClass:"input-unit"},[i("input",{directives:[{name:"model",rawName:"v-model",value:t.order.auto_success_hours,expression:"order.auto_success_hours"}],attrs:{type:"number"},domProps:{value:t.order.auto_success_hours},on:{input:function(e){e.target.composing||t.$set(t.order,"auto_success_hours",e.target.value)}}}),i("span",[t._v("分")])])])]),t._v(" "),i("van-cell",[i("div",{attrs:{slot:"title"},slot:"title"},[t._v("店内订单自动完成(已接单订单)")]),t._v(" "),i("div",{attrs:{slot:"right-icon"},slot:"right-icon"},[i("div",{staticClass:"input-unit"},[i("input",{directives:[{name:"model",rawName:"v-model",value:t.order.tangshi_auto_success_hours,expression:"order.tangshi_auto_success_hours"}],attrs:{type:"number"},domProps:{value:t.order.tangshi_auto_success_hours},on:{input:function(e){e.target.composing||t.$set(t.order,"tangshi_auto_success_hours",e.target.value)}}}),i("span",[t._v("分")])])])])],1),t._v(" "),i("van-radio-group",{staticClass:"margin-10-t"},[i("van-cell-group",[i("van-cell",{attrs:{title:"订单标记"}}),t._v(" "),i("van-cell",{staticClass:"border-0px"},[i("div",{attrs:{slot:"title"},slot:"title"},[t._v("订单完成超时(支付完成到订单完成)")]),t._v(" "),i("div",{attrs:{slot:"right-icon"},slot:"right-icon"},[i("div",{staticClass:"input-unit"},[i("input",{directives:[{name:"model",rawName:"v-model",value:t.order.timeout_limit,expression:"order.timeout_limit"}],attrs:{type:"number"},domProps:{value:t.order.timeout_limit},on:{input:function(e){e.target.composing||t.$set(t.order,"timeout_limit",e.target.value)}}}),i("span",[t._v("分")])])])]),t._v(" "),i("van-cell",{staticClass:"border-0px"},[i("div",{attrs:{slot:"title"},slot:"title"},[t._v("订单配送提前(配送员接单到订单完成)")]),t._v(" "),i("div",{attrs:{slot:"right-icon"},slot:"right-icon"},[i("div",{staticClass:"input-unit"},[i("input",{directives:[{name:"model",rawName:"v-model",value:t.order.delivery_before_limit,expression:"order.delivery_before_limit"}],attrs:{type:"number"},domProps:{value:t.order.delivery_before_limit},on:{input:function(e){e.target.composing||t.$set(t.order,"delivery_before_limit",e.target.value)}}}),i("span",[t._v("分")])])])]),t._v(" "),i("van-cell",{staticClass:"border-0px"},[i("div",{attrs:{slot:"title"},slot:"title"},[t._v("订单配送超时(配送员接单到订单完成)")]),t._v(" "),i("div",{attrs:{slot:"right-icon"},slot:"right-icon"},[i("div",{staticClass:"input-unit"},[i("input",{directives:[{name:"model",rawName:"v-model",value:t.order.delivery_timeout_limit,expression:"order.delivery_timeout_limit"}],attrs:{type:"number"},domProps:{value:t.order.delivery_timeout_limit},on:{input:function(e){e.target.composing||t.$set(t.order,"delivery_timeout_limit",e.target.value)}}}),i("span",[t._v("分")])])])]),t._v(" "),i("van-cell",{staticClass:"border-0px"},[i("div",{attrs:{slot:"title"},slot:"title"},[t._v("待抢订单超时"),i("br"),t._v("(商家通知配送员接单到配送员接单)")]),t._v(" "),i("div",{attrs:{slot:"right-icon"},slot:"right-icon"},[i("div",{staticClass:"input-unit"},[i("input",{directives:[{name:"model",rawName:"v-model",value:t.order.delivery_status_3.timeout_limit,expression:"order.delivery_status_3.timeout_limit"}],attrs:{type:"number"},domProps:{value:t.order.delivery_status_3.timeout_limit},on:{input:function(e){e.target.composing||t.$set(t.order.delivery_status_3,"timeout_limit",e.target.value)}}}),i("span",[t._v("分")])])])])],1)],1),t._v(" "),i("div",{staticClass:"padding-15"},[i("van-button",{staticClass:"bg-primary font-16",attrs:{size:"normal",block:""},on:{click:t.onSubmit}},[t._v("提交")])],1)],1),t._v(" "),t.showPreLoading?i("iloading"):t._e()],1)},staticRenderFns:[]};var a=i("VU/8")(s,l,!1,function(t){i("AzEF")},null,null);e.default=a.exports}});