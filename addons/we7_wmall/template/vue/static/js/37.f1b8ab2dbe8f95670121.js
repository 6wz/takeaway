webpackJsonp([37],{"Md+e":function(t,e,s){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var i=s("Gu7T"),a=s.n(i),o=s("Cz8s"),n=s("+TmT"),r={data:function(){return{sid:Number,radio:"0",note:"",thumbs:[],mobile:"",store:{},reasons:[],member:{},preLoading:!0}},components:{PublicHeader:o.a,Uploader:n.a},methods:{onLoad:function(){var t=this;this.util.request({url:"wmall/store/report",data:{sid:this.sid}}).then(function(e){t.preLoading=!1;var s=e.data.message;if(s.errno)return t.util.$toast(s.message),!1;t.store=s.message.store,t.mobile=s.message.member.mobile,s.message.reasons.length>0&&(t.reasons=[].concat(a()(s.message.reasons)),t.radio=String(t.reasons.length-1))})},onSubmit:function(){var t=this,e=this.reasons[this.radio];if(!e)return this.util.$toast("投诉类型不能为空"),!1;if(!this.note)return this.util.$toast("投诉内容不能为空"),!1;if(!this.util.isValidMobile(this.mobile))return this.$toast("手机号格式错误"),!1;if(this.thumbs.length>3)return this.util.$toast("最多能上传3张图片"),!1;var s={sid:this.sid,title:e,note:this.note,mobile:this.mobile,thumbs:this.thumbs};this.util.request({url:"wmall/store/report/post",method:"post",data:s}).then(function(e){var s=e.data.message;if(s.errno)return t.util.$toast(s.message),!1;t.util.$toast(s.message,t.util.getUrl({path:"pages/store/index",query:{sid:t.sid}}))})},onGetImgsUrl:function(t){this.thumbs=t}},created:function(){if(!this.$route.query.sid)return this.util.$toast("门店不存在或已删除"),!1;this.sid=this.$route.query.sid},mounted:function(){this.onLoad()}},l={render:function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{attrs:{id:"store-report"}},[s("public-header",{attrs:{title:"举报商家"}}),t._v(" "),s("div",{staticClass:"content"},[t.reasons&&t.reasons.length>0?s("van-radio-group",{staticClass:"reason-list",model:{value:t.radio,callback:function(e){t.radio=e},expression:"radio"}},[s("van-cell-group",[s("van-cell",[s("div",{staticClass:"flex",attrs:{slot:"title"},slot:"title"},[s("div",{staticClass:"icon icon-infofill"}),t._v("举报商家:"+t._s(t.store.title)+"\n\t\t\t\t\t")])]),t._v(" "),t._l(t.reasons,function(e,i){return s("van-cell",{key:i},[s("van-radio",{attrs:{name:""+i}},[t._v(t._s(e))])],1)})],2)],1):t._e(),t._v(" "),s("van-cell-group",[s("van-field",{attrs:{type:"textarea",placeholder:"必填。描述详细。",rows:"3"},model:{value:t.note,callback:function(e){t.note=e},expression:"note"}})],1),t._v(" "),s("div",{staticClass:"tip"},[t._v("有图有真相")]),t._v(" "),s("uploader",{attrs:{max:3},on:{onGetUrl:t.onGetImgsUrl}}),t._v(" "),s("div",{staticClass:"tip"},[t._v("手机号,仅平台管理员可见")]),t._v(" "),s("van-cell-group",[s("van-field",{attrs:{placeholder:"手机号码：仅平台管理员可见"},model:{value:t.mobile,callback:function(e){t.mobile=e},expression:"mobile"}})],1),t._v(" "),s("div",{staticClass:"save-btn",on:{click:t.onSubmit}},[s("van-button",{attrs:{type:"danger",size:"normal",block:!0}},[t._v("保存")])],1)],1),t._v(" "),s("transition",{attrs:{name:"loading"}},[t.preLoading?s("iloading"):t._e()],1)],1)},staticRenderFns:[]};var u=s("VU/8")(r,l,!1,function(t){s("bDht")},null,null);e.default=u.exports},bDht:function(t,e){}});