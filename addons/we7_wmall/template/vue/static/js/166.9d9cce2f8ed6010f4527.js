webpackJsonp([166],{KV36:function(s,e,t){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var r={data:function(){return{password:"",newpassword:"",repassword:""}},components:{PublicHeader:t("Cz8s").a},methods:{onSubmit:function(){var s=this;if(!this.password)return this.$toast("当前密码不能为空"),!1;if(!this.newpassword)return this.$toast("新密码不能为空"),!1;var e=this.newpassword.length;if(e<8||e>20)return this.$toast("请输入8-20位密码"),!1;if(!/[0-9]+[a-zA-Z]+[0-9a-zA-Z]*|[a-zA-Z]+[0-9]+[0-9a-zA-Z]*/.test(this.newpassword))return this.$toast("密码必须由数字和字母组合"),!1;if(!this.repassword)return this.$toast("请确认新密码"),!1;if(this.newpassword!=this.repassword)return this.$toast("两次密码输入不一致"),!1;var t={type:"account",password:this.password,newpassword:this.newpassword,repassword:this.repassword};this.util.request({url:"wmall/member/profile/edit",data:t}).then(function(e){var t=e.data.message;t.errno?s.$toast(t.message):s.$router.push("/pages/member/profile")})}}},a={render:function(){var s=this,e=s.$createElement,t=s._self._c||e;return t("div",{attrs:{id:"memberProfilePassword"}},[t("public-header",{attrs:{title:"修改密码"}}),s._v(" "),t("div",{staticClass:"content"},[t("van-cell-group",[t("van-field",{attrs:{type:"password",placeholder:"当前密码"},model:{value:s.password,callback:function(e){s.password=e},expression:"password"}}),s._v(" "),t("van-field",{attrs:{type:"password",placeholder:"新密码"},model:{value:s.newpassword,callback:function(e){s.newpassword=e},expression:"newpassword"}}),s._v(" "),t("van-field",{attrs:{type:"password",placeholder:"确认新密码"},model:{value:s.repassword,callback:function(e){s.repassword=e},expression:"repassword"}})],1),s._v(" "),t("div",{staticClass:"submit"},[t("van-button",{attrs:{size:"large",type:"danger"},on:{click:function(e){return s.onSubmit()}}},[s._v("确定")])],1)],1)],1)},staticRenderFns:[]};var o=t("VU/8")(r,a,!1,function(s){t("mps/")},null,null);e.default=o.exports},"mps/":function(s,e){}});