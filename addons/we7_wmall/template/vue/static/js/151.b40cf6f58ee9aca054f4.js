webpackJsonp([151],{lGVB:function(t,i,s){"use strict";Object.defineProperty(i,"__esModule",{value:!0});var n={data:function(){return{show:!1,iosLink:"",androidLink:""}},methods:{onShowClick:function(){this.util.isWeixin()?this.show=!0:this.util.isIos()?this.iosLink?window.location.href=this.iosLink:that.util.$toast("下载地址不存在"):window.location.href=this.androidLink},onHideClick:function(){this.show=!1}},mounted:function(){var t=this;this.util.request({url:"system/common/download/customer",method:"POST"}).then(function(i){if((i=i.data.message).errno)return t.util.$toast(i.message),!1;i=i.message,t.iosLink=i.link_ios,t.androidLink=i.link_android})}},o={render:function(){var t=this,i=t.$createElement,s=t._self._c||i;return s("div",{attrs:{id:"dowload-member"}},[s("div",{staticClass:"content"},[s("div",{staticClass:"dow-btn-warp"},[s("div",{staticClass:"dow-btn"},[s("div",{staticClass:"dow",on:{click:t.onShowClick}},[s("van-icon",{attrs:{name:"down"}}),t._v("下载顾客客户端")],1)])]),t._v(" "),s("div",{staticClass:"abodytips",class:{"is-show":t.show},on:{click:t.onHideClick}},[t._m(0),t._v(" "),s("div",{staticClass:"tips_bottom"},[s("div",{staticClass:"tips_bottom_2",on:{click:t.onHideClick}},[s("img",{attrs:{src:"static/img/zhi.png"}})])])])])])},staticRenderFns:[function(){var t=this.$createElement,i=this._self._c||t;return i("div",{staticClass:"tips_center"},[i("img",{attrs:{src:"static/img/androidtips.png"}})])}]};var a=s("VU/8")(n,o,!1,function(t){s("nJTE")},null,null);i.default=a.exports},nJTE:function(t,i){}});