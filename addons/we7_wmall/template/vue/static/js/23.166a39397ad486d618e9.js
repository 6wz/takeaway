webpackJsonp([23],{"2l1O":function(e,t){},"5MND":function(e,t,a){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var r={components:{PublicHeader:a("Cz8s").a},data:function(){return{freelunch:{},partaker:{},num:0}},methods:{onLoad:function(){var e=this;this.util.request({url:"freeLunch/freeLunch/partake_success"}).then(function(t){var a=t.data.message;if(a.errno)return e.util.$toast(a.message),!1;a=a.message,e.freelunch=a.freelunch,e.partaker=a.partaker,e.num=a.num})}},mounted:function(){this.onLoad()}},s={render:function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{attrs:{id:"freelunch-partake_success"}},[a("public-header",{attrs:{title:"参与成功"}}),e._v(" "),a("div",{staticClass:"content"},[a("div",{staticClass:"partake-info"},[a("p",[e._v("参与成功")]),e._v(" "),a("div",{staticClass:"partake-serial"},[e._v("您是本期第"+e._s(e.num)+"位参与者,奖券号"),a("span",[e._v(e._s(e.partaker.number))])]),e._v(" "),a("div",{staticClass:"pre-reward-time"},[e._v("预计1小时内开奖,若与当期开奖号码相同即为中奖")]),e._v(" "),a("div",{staticClass:"scan"},[a("router-link",{staticClass:"scan-btn",attrs:{to:e.util.getUrl({path:"/package/pages/freelunch/detail",query:{record_id:e.partaker.record_id}})}},[e._v("查看本期开奖进度")])],1)]),e._v(" "),a("div",{staticClass:"repartake"},[1==e.freelunch.partake_grant_type?a("div",{staticClass:"remission"},[e._v("返还的"+e._s(e.partaker.final_fee)+"元红包已经放入您的账户,每次参与都会立返哦")]):2==e.freelunch.partake_grant_type?a("div",{staticClass:"remission"},[e._v("返还的"+e._s(e.partaker.final_fee)+"元现金已经放入您的账户,每次参与都会立返哦")]):e._e(),e._v(" "),a("div",{staticClass:"repartake-invite"},[a("router-link",{staticClass:"repartake-btn",attrs:{to:e.util.getUrl({path:"/package/pages/freelunch/index"})}},[e._v("再次参与,中奖率加倍")])],1),e._v(" "),a("router-link",{staticClass:"partake-plus",attrs:{to:e.util.getUrl({path:"/package/pages/freelunch/index",query:{type:"plus"}})}},[e._v("参加霸王餐Plus,赢元红包"),a("van-icon",{attrs:{name:"right"}})],1)],1)])],1)},staticRenderFns:[]};var n=a("VU/8")(r,s,!1,function(e){a("2l1O")},null,null);t.default=n.exports}});
//# sourceMappingURL=23.166a39397ad486d618e9.js.map