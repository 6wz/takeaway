webpackJsonp([18],{"4zPV":function(a,t,n){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var i=n("woOf"),e=n.n(i),l=n("Gu7T"),c=n.n(l),o=n("Cz8s"),s=n("deIj"),r={data:function(){return{alipay:{realname:"",account:""},bank:{id:"",title:"",realname:"",account:""},bank_list:[],bankPicker:!1,filter:{items:{type:"bank"}},showPreLoading:!0,islegal:!1}},components:{publicHeader:o.a},methods:{onLoad:function(){var a=this;Object(s.a)({vue:this,url:"delivery/finance/account",success:function(t){a.bank_list=[].concat(c()(a.bank_list),c()(t.bank_list)),a.bank=e()(a.bank,t.bank),a.alipay=e()(a.alipay,t.alipay),a.islegal=!0}})},onBankPicker:function(){this.bankPicker=!this.bankPicker},onConfirmBank:function(a){this.bank.id=a.id,this.bank.title=a.title,this.onBankPicker()},onToggleStatus:function(a){this.filter.items.type!=a&&(this.filter.items.type=a)},onSubmit:function(){var a=this;if(a.islegal){if("bank"==a.filter.items.type){if(!a.bank.title)return void a.util.$toast("请选择开户银行","",1e3);if(!a.bank.account)return void a.util.$toast("银行卡号不能为空","",1e3);if(!a.bank.realname)return void a.util.$toast("开户人姓名不能为空","",1e3)}else{if(!a.alipay.account)return void a.util.$toast("支付宝账号不能为空","",1e3);if(!a.alipay.realname)return void a.util.$toast("支付宝姓名不能为空","",1e3)}a.islegal=!1;var t={bank:a.bank,alipay:a.alipay};Object(s.c)({vue:a,url:"delivery/finance/account",data:{params:t},success:function(){a.util.$toast("设置提现账户成功","",1500)},fail:function(){a.util.$toast("设置提现账户失败","",1500),a.islegal=!0}})}}},mounted:function(){this.onLoad()}},u={render:function(){var a=this,t=a.$createElement,n=a._self._c||t;return n("div",{attrs:{id:"finance-account"}},[n("public-header",{attrs:{title:"提现账户"}}),a._v(" "),n("div",{staticClass:"content"},[n("div",{staticClass:"account-title"},[n("div",{staticClass:"account-group flex"},[n("div",{staticClass:"bank",class:{active:"bank"==a.filter.items.type},on:{click:function(t){a.onToggleStatus("bank")}}},[a._v("提现到银行账户")]),a._v(" "),n("div",{staticClass:"alipay",class:{active:"alipay"==a.filter.items.type},on:{click:function(t){a.onToggleStatus("alipay")}}},[a._v("提现到支付宝账户")])])]),a._v(" "),"bank"==a.filter.items.type?[n("van-cell-group",[n("van-cell",{attrs:{title:"银行"}},[n("div",{staticClass:"flex",attrs:{slot:"right-icon"},on:{click:function(t){a.onBankPicker()}},slot:"right-icon"},[n("span",[a._v(a._s(a.bank.title?a.bank.title:"请选择开户银行"))]),a._v(" "),n("van-icon",{attrs:{name:"arrow"}})],1)]),a._v(" "),n("van-field",{attrs:{label:"银行卡号",placeholder:"请输入银行卡号","input-align":"right"},model:{value:a.bank.account,callback:function(t){a.$set(a.bank,"account",t)},expression:"bank.account"}}),a._v(" "),n("van-field",{attrs:{label:"开户人姓名",placeholder:"请输入开户人姓名","input-align":"right"},model:{value:a.bank.realname,callback:function(t){a.$set(a.bank,"realname",t)},expression:"bank.realname"}})],1)]:[n("van-cell-group",[n("van-field",{attrs:{label:"支付宝账号",placeholder:"请输入支付宝账号","input-align":"right"},model:{value:a.alipay.account,callback:function(t){a.$set(a.alipay,"account",t)},expression:"alipay.account"}}),a._v(" "),n("van-field",{attrs:{label:"支付宝姓名",placeholder:"请输入支付宝姓名","input-align":"right"},model:{value:a.alipay.realname,callback:function(t){a.$set(a.alipay,"realname",t)},expression:"alipay.realname"}})],1)],a._v(" "),n("div",{staticClass:"padding-15"},[n("van-button",{staticClass:"bg-primary font-16",attrs:{size:"normal",block:"",disabled:!a.islegal},on:{click:a.onSubmit}},[a._v("提交")])],1)],2),a._v(" "),n("van-popup",{attrs:{position:"bottom"},model:{value:a.bankPicker,callback:function(t){a.bankPicker=t},expression:"bankPicker"}},[n("div",{staticClass:"popup-content"},[n("van-picker",{attrs:{"show-toolbar":"","value-key":"title",columns:a.bank_list},on:{cancel:a.onBankPicker,confirm:a.onConfirmBank}})],1)]),a._v(" "),a.showPreLoading?n("iloading"):a._e()],1)},staticRenderFns:[]};var k=n("VU/8")(r,u,!1,function(a){n("5VLG")},null,null);t.default=k.exports},"5VLG":function(a,t){}});