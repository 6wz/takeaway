webpackJsonp([195],{hvnb:function(e,t,n){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var r={data:function(){return{}},methods:{},mounted:function(){var e=this;QFH5.getUserInfo(function(t,n){if(1==t){var r=n;r.forward=e.util.getStorage("forwardUrl"),e.util.request({method:"post",url:"wmall/auth/qianfan",data:r}).then(function(t){var n=t.data.message;if(0!=n.errno)return e.util.$toast(n.message),QFH5.jumpLogin(function(e,t){}),!1;location.href=n.message.url})}else QFH5.jumpLogin(function(e,t){})})}},a={render:function(){var e=this.$createElement;return(this._self._c||e)("div")},staticRenderFns:[]},u=n("VU/8")(r,a,!1,null,null,null);t.default=u.exports}});
//# sourceMappingURL=195.06077ae71aff52eba2c0.js.map