webpackJsonp([53],{"5ajB":function(s,a,t){"use strict";Object.defineProperty(a,"__esModule",{value:!0});var e=t("Gu7T"),i=t.n(e),l={components:{PublicHeader:t("Cz8s").a},data:function(){return{luckiers:{min:0,loading:!1,loaded:!1,empty:!1,data:[]}}},methods:{onLoad:function(){var s=this;this.util.request({url:"freeLunch/freeLunch/luckier",data:{min:this.luckiers.min}}).then(function(a){var t=a.data.message;if(t.errno)return s.util.$toast(t.message),!1;s.luckiers.min=t.min,s.luckiers.data=[].concat(i()(s.luckiers.data),i()(t.message)),t.message.length<15&&(s.luckiers.loaded=!0),s.luckiers.data.length||(s.luckiers.empty=!0),s.luckiers.loading=!1})}},mounted:function(){this.onLoad()}},n={render:function(){var s=this,a=s.$createElement,t=s._self._c||a;return t("div",{attrs:{id:"freeLunch-luckier"}},[t("public-header",{attrs:{title:"往期幸运星"}}),s._v(" "),t("div",{staticClass:"content"},[s.luckiers.empty?t("div",{staticClass:"loaded"},[t("div",{staticClass:"loaded-tips"},[s._v("暂无记录")])]):t("van-list",{staticClass:"luckier-list",attrs:{finished:s.luckiers.loaded,"immediate-check":!1,offset:100},on:{load:s.onLoad},model:{value:s.luckiers.loading,callback:function(a){s.$set(s.luckiers,"loading",a)},expression:"luckiers.loading"}},[s._l(s.luckiers.data,function(a,e){return t("router-link",{key:e,staticClass:"luckier-item",attrs:{to:s.util.getUrl({path:"/package/pages/freelunch/detail",query:{record_id:a.id}})}},[t("div",{staticClass:"participant-title van-hairline--bottom"},[t("span",[s._v("第"+s._s(a.serial_sn)+"期 "),"plus"==a.type?t("span",{staticClass:"plus"},[s._v("Plus")]):s._e()]),s._v(" "),t("span",{staticClass:"prize-time"},[s._v("开奖时间："+s._s(a.endtime))])]),s._v(" "),t("div",{staticClass:"luckier-info"},[t("div",{staticClass:"col-20"},[t("img",{attrs:{src:a.avatar,alt:""}})]),s._v(" "),t("div",{staticClass:"col-80"},[t("div",[t("span",{staticClass:"luckier-key"},[s._v("幸运星：")]),s._v(" "),t("span",{staticClass:"luckier-value"},[s._v(s._s(a.nickname))])]),s._v(" "),t("div",[t("span",{staticClass:"luckier-key"},[s._v("手机号：")]),s._v(" "),t("span",{staticClass:"luckier-value"},[s._v(s._s(a.mobile))])]),s._v(" "),t("div",[t("span",{staticClass:"luckier-key"},[s._v("本期参与：")]),s._v(" "),t("span",{staticClass:"luckier-value"},[t("span",[s._v(s._s(a.total))]),s._v(" 次")])]),s._v(" "),t("div",[t("span",{staticClass:"luckier-key"},[s._v("幸运号码：")]),s._v(" "),t("span",{staticClass:"luckier-value"},[s._v(s._s(a.reward_number))])])]),s._v(" "),t("van-icon",{attrs:{name:"right"}})],1)])}),s._v(" "),s.luckiers.loaded?t("div",{staticClass:"loaded"},[t("div",{staticClass:"loaded-tips"},[s._v("我是有底线的")])]):s._e()],2)],1)],1)},staticRenderFns:[]};var c=t("VU/8")(l,n,!1,function(s){t("uWp7")},null,null);a.default=c.exports},uWp7:function(s,a){}});