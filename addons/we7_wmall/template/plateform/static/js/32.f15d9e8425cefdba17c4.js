webpackJsonp([32],{"Is2/":function(s,e){},KV36:function(s,e,a){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var t=a("Cz8s"),r=a("deIj"),o={data:function(){return{password:"",newpassword:"",repassword:"",islegal:!0}},components:{PublicHeader:t.a},methods:{onSubmit:function(){var s=this;if(!s.islegal)return!1;if(!s.password)return s.$toast("当前密码不能为空"),!1;if(!s.newpassword)return s.util.$toast("新密码不能为空"),!1;if(!s.repassword)return s.util.$toast("请确认新密码"),!1;if(s.newpassword!=s.repassword)return s.util.$toast("两次密码输入不一致"),!1;s.islegal=!1;var e={password:this.password,newpassword:this.newpassword,repassword:this.repassword};Object(r.c)({vue:s,url:"plateform/member/mine/password",data:e,message:"修改成功",redirect:s.util.getUrl({path:"/pages/member/mine"}),fail:function(e){s.util.$toast(e),s.islegal=!0}})}}},n={render:function(){var s=this,e=s.$createElement,a=s._self._c||e;return a("div",{attrs:{id:"memberProfilePassword"}},[a("public-header",{attrs:{title:"修改密码"}}),s._v(" "),a("div",{staticClass:"content"},[a("van-cell-group",{staticClass:"margin-10-t"},[a("van-field",{attrs:{type:"password",placeholder:"当前密码"},model:{value:s.password,callback:function(e){s.password=e},expression:"password"}}),s._v(" "),a("van-field",{attrs:{type:"password",placeholder:"新密码"},model:{value:s.newpassword,callback:function(e){s.newpassword=e},expression:"newpassword"}}),s._v(" "),a("van-field",{attrs:{type:"password",placeholder:"确认新密码"},model:{value:s.repassword,callback:function(e){s.repassword=e},expression:"repassword"}})],1),s._v(" "),a("div",{staticClass:"padding-15"},[a("van-button",{staticClass:"font-16",attrs:{size:"normal",type:"primary",disabled:!s.islegal,block:""},on:{click:function(e){s.onSubmit()}}},[s._v("确定")])],1),s._v(" "),a("div",{staticClass:"c-gray text-center font-14"},[s._v("忘记旧密码? 请联系平台管理员")])],1)],1)},staticRenderFns:[]};var i=a("VU/8")(o,n,!1,function(s){a("Is2/")},null,null);e.default=i.exports}});