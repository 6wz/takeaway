webpackJsonp([193],{"8jPh":function(t,e){},ySzo:function(t,e,s){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var a=s("Cz8s"),i=s("P8xa"),o={components:{PublicHeader:a.a,imessage:i.a},data:function(){return{showPreLoading:!0,showAgents:!1,submitting:!1,isagent:0,agentid:0,agentTitle:"",agents:[],mobile:"",title:"",password:"",repassword:"",captcha:"",code:"",mobile_verify_status:0,captcha_img:"",code_html:"获取验证码",downcount:60,code_disabled:!1,message:{type:"",message:"",description:"",redirect:"",btnText:""}}},methods:{onConfirmAgent:function(t,e){this.agentid=t.id,this.agentTitle=t.text,this.showAgents=!1},onCancelAgent:function(){this.showAgents=!1,this.agentid=0,this.agentTitle=""},onRefreshCaptcha:function(){var t=this;this.util.request({url:"haodian/settle/captcha"}).then(function(e){t.captcha_img=e.data.message.message.captcha})},onSubmit:function(){var t=this;if(this.submitting)return!1;if(!this.mobile)return this.$toast("手机号不能为空"),!1;if(!this.util.isValidMobile(this.mobile))return this.$toast("手机号格式错误"),!1;if(1==this.mobile_verify_status){if(!this.captcha)return this.$toast("请输入图形验证码"),!1;if(!this.code)return this.$toast("请输入短信验证码"),!1}if(!this.password)return this.$toast("密码不能为空"),!1;var e=this.password.length;if(e<8||e>20)return this.$toast("请输入8-20位密码"),!1;return/[0-9]+[a-zA-Z]+[0-9a-zA-Z]*|[a-zA-Z]+[0-9]+[0-9a-zA-Z]*/.test(this.password)?this.repassword?this.password!=this.repassword?(this.$toast("两次密码输入不一致"),!1):this.isagent>0&&!this.agentid?(this.$toast("请选择所属区域"),!1):(this.submitting=!0,void this.util.request({url:"haodian/settle/account",method:"POST",data:{mobile:this.mobile,code:this.code,password:this.password,repassword:this.repassword,title:this.title,agentid:this.agentid}}).then(function(e){var s=e.data.message;if(t.util.$toast(s.message,"",1e3),s.errno)return-1e3==s.errno&&t.onLoad(),t.submitting=!1,!1})):(this.$toast("请重复输入密码"),!1):(this.$toast("密码必须由数字和字母组合"),!1)},onGetCode:function(){var t=this;return 60==this.downcount&&(this.mobile?this.util.isValidMobile(this.mobile)?this.captcha?void this.util.request({url:"system/common/code",method:"POST",data:{mobile:this.mobile,captcha:this.captcha}}).then(function(e){var s=e.data.message;if(s.errno)t.$toast(s.message);else{var a=setInterval(function(){t.downcount--,t.downcount<=0?(clearInterval(a),t.code_html="获取验证码",t.downcount=60):(t.code_disabled=!0,t.code_html=t.downcount+"秒后重新获取")},1e3);t.$toast("验证码发送成功, 请注意查收")}}):(this.$toast("请输入图形验证码"),!1):(this.$toast("手机号格式错误"),!1):(this.$toast("请输入手机号"),!1))},onLoad:function(){var t=this;this.util.request({url:"haodian/settle/account"}).then(function(e){t.showPreLoading=!1;var s=e.data.message;if(s.errno)return-1e3==s.errno?void t.$router.replace(t.util.getUrl({path:"/gohome/pages/haodian/application"})):(t.message={type:"error",message:s.message,redirect:t.util.getUrl({path:"/pages/member/mine"}),btnText:"返回"},!1);t.mobile_verify_status=s.message.mobile_verify_status,t.captcha_img=s.message.captcha,t.isagent=s.message.isagent,t.isagent>0&&(t.agents=s.message.agents)})}},mounted:function(){this.onLoad()}},n={render:function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{attrs:{id:"haodian-settle"}},[s("public-header",{attrs:{title:"好店入驻"}}),t._v(" "),s("div",{staticClass:"content"},[s("van-cell-group",[s("van-field",{attrs:{label:"手机号",placeholder:"请输入手机号"},model:{value:t.mobile,callback:function(e){t.mobile=e},expression:"mobile"}}),t._v(" "),1==t.mobile_verify_status?s("van-field",{attrs:{type:"number",label:"图形验证码",placeholder:"请输入图形验证码"},model:{value:t.captcha,callback:function(e){t.captcha=e},expression:"captcha"}}):t._e(),t._v(" "),1==t.mobile_verify_status?s("van-field",{attrs:{type:"number",label:"短信验证码",placeholder:"请输入6位短信验证码"},model:{value:t.code,callback:function(e){t.code=e},expression:"code"}}):t._e(),t._v(" "),s("van-field",{attrs:{type:"password",label:"登录密码",placeholder:"请输入您的登录密码"},model:{value:t.password,callback:function(e){t.password=e},expression:"password"}}),t._v(" "),s("van-field",{attrs:{type:"password",label:"确认密码",placeholder:"请输入确认登录密码"},model:{value:t.repassword,callback:function(e){t.repassword=e},expression:"repassword"}}),t._v(" "),s("van-field",{attrs:{label:"姓名",placeholder:"您的姓名"},model:{value:t.title,callback:function(e){t.title=e},expression:"title"}}),t._v(" "),t.isagent>0?s("van-field",{attrs:{value:t.agentTitle,label:"所属区域",placeholder:"选择所属区域"},on:{click:function(e){t.showAgents=!0}}}):t._e()],1),t._v(" "),1==t.mobile_verify_status?s("div",{staticClass:"email-img",on:{click:t.onRefreshCaptcha}},[s("img",{attrs:{src:t.captcha_img,alt:""}})]):t._e(),t._v(" "),1==t.mobile_verify_status?s("div",{staticClass:"list-password",class:{disabled:t.code_disabled},on:{click:t.onGetCode}},[t._v(t._s(t.code_html)),s("van-icon",{attrs:{name:"right"}})],1):t._e(),t._v(" "),s("div",{staticClass:"submit",on:{click:t.onSubmit}},[s("van-button",{attrs:{size:"normal",type:"danger",block:!0,disabled:t.submitting}},[t._v("下一步")])],1),t._v(" "),t.message.type?s("imessage",{attrs:{message:t.message}}):t._e()],1),t._v(" "),s("van-popup",{attrs:{position:"bottom"},model:{value:t.showAgents,callback:function(e){t.showAgents=e},expression:"showAgents"}},[s("div",{staticClass:"popup-picknum"},[s("van-picker",{attrs:{columns:t.agents,title:"选择区域","show-toolbar":"","confirm-button-text":"确认","cancel-button-text":"取消"},on:{confirm:t.onConfirmAgent,cancel:function(e){return t.onCancelAgent()}}})],1)]),t._v(" "),s("transition",{attrs:{name:"loading"}},[t.showPreLoading?s("iloading"):t._e()],1)],1)},staticRenderFns:[]};var r=s("VU/8")(o,n,!1,function(t){s("8jPh")},"data-v-0562f082",null);e.default=r.exports}});