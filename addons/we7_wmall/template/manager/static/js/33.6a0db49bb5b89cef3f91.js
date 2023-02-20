webpackJsonp([33],{"c/2g":function(t,a,e){"use strict";Object.defineProperty(a,"__esModule",{value:!0});var n=e("Cz8s"),i=e("deIj"),c={data:function(){return{channel:"weixin",account:{},get_fee:"",showPreLoading:!0,islegal:!1,config:{}}},components:{publicHeader:n.a},methods:{onLoad:function(){var t=this;Object(i.a)({vue:t,url:"manage/finance/getcash/index",autoAssign:!0,variable:"account",success:function(a){t.islegal=!0,t.config=a.config}})},onSubmit:function(){var t=this;if(!t.islegal)return!1;var a=parseFloat(t.get_fee);if(isNaN(a)||a<=0)return t.util.$toast("提现金额有误"),!1;if(a>t.account.amount)return t.util.$toast("提现金额不能大于账户可用余额"),!1;t.islegal=!1;var e=(a*t.account.fee_rate/100).toFixed(2);e=Math.max(e,t.account.fee_min),t.account.fee_max>0&&(e=Math.min(e,t.account.fee_max));var n="提现金额"+a+"元, 手续费"+(e=parseFloat(e))+"元,实际到账"+(a-e).toFixed(2)+"元, 确定提现吗";Object(i.c)({vue:t,url:"manage/finance/getcash/getcash",confirm:n,data:{fee:a,channel:t.channel},success:function(a){t.util.$toast(a,t.util.getUrl({path:"/pages/finance/index"}),1e3)},fail:function(a){t.util.$toast(a),t.islegal=!0}})}},mounted:function(){this.onLoad()}},l={render:function(){var t=this,a=t.$createElement,e=t._self._c||a;return e("div",{attrs:{id:"finance-getcash"}},[e("public-header",{attrs:{title:"申请提现"}}),t._v(" "),e("div",{staticClass:"content"},[e("van-cell-group",{staticClass:"margin-10-t"},[e("van-cell",[e("div",{attrs:{slot:"title"},slot:"title"},[t._v("\n\t\t\t\t\t账户可用余额:\n\t\t\t\t\t"),e("span",{staticClass:"c-info margin-5-l"},[t._v("¥"+t._s(t.account.amount))])])])],1),t._v(" "),e("van-cell-group",{staticClass:"margin-10-t padding-15 border-0px"},[e("p",{staticClass:"font-14 margin-10-b"},[t._v("提现金额")]),t._v(" "),e("input",{directives:[{name:"model",rawName:"v-model.number",value:t.get_fee,expression:"get_fee",modifiers:{number:!0}}],staticClass:"getcash-num",attrs:{type:"text",placeholder:"请输入提现金额"},domProps:{value:t.get_fee},on:{input:function(a){a.target.composing||(t.get_fee=t._n(a.target.value))},blur:function(a){t.$forceUpdate()}}}),t._v(" "),e("div",{staticClass:"getcash-rule"},[e("p",[t._v("最低提现金额为"+t._s(t.account.fee_limit)+"元")]),t._v(" "),e("p",[t._v("提现费率为"+t._s(t.account.fee_rate)+"%，最低收取"+t._s(t.account.fee_min)+"元，最高收取"+t._s(t.account.fee_max)+"元")])])]),t._v(" "),t.config&&t.config.type?e("van-radio-group",{model:{value:t.channel,callback:function(a){t.channel=a},expression:"channel"}},[e("p",{staticClass:"getcash-type"},[t._v("提现方式")]),t._v(" "),e("van-cell-group",{staticClass:"border-0px"},[e("van-cell",{attrs:{title:"微信提现",clickable:""},on:{click:function(a){t.channel="weixin"}}},[e("van-radio",{attrs:{name:"weixin"}})],1),t._v(" "),1==t.config.type.alipay?e("van-cell",{attrs:{title:"支付宝提现",clickable:""},on:{click:function(a){t.channel="alipay"}}},[e("van-radio",{attrs:{name:"alipay"}})],1):t._e(),t._v(" "),1==t.config.type.bank?e("van-cell",{attrs:{title:"银行卡提现",clickable:""},on:{click:function(a){t.channel="bank"}}},[e("van-radio",{attrs:{name:"bank"}})],1):t._e()],1)],1):t._e(),t._v(" "),e("div",{staticClass:"padding-15"},[e("van-button",{staticClass:"font-16 bg-info",attrs:{size:"normal",disabled:!t.islegal,block:""},on:{click:t.onSubmit}},[t._v("提现")])],1)],1),t._v(" "),t.showPreLoading?e("iloading"):t._e()],1)},staticRenderFns:[]};var s=e("VU/8")(c,l,!1,function(t){e("nr/k")},null,null);a.default=s.exports},"nr/k":function(t,a){}});
//# sourceMappingURL=33.6a0db49bb5b89cef3f91.js.map