webpackJsonp([31],{"/8YR":function(t,a){},"47T6":function(t,a,e){"use strict";Object.defineProperty(a,"__esModule",{value:!0});var s=e("Gu7T"),r=e.n(s),i=e("Cz8s"),n=e("NPH5"),d={components:{PublicHeader:i.a,Load:n.a},data:function(){return{record_id:Number,uid:"",freelunch:{},member:{},mine_partaker:{},partake_status:{},record:{},winner_partaker:{},partakers:{min:0,loading:!1,loaded:!1,empty:!1,data:[]}}},methods:{onLoad:function(){var t=this;this.util.request({url:"freeLunch/freeLunch/detail",data:{record_id:this.record_id}}).then(function(a){var e=a.data.message;if(e.errno)return t.util.$toast(e.message),!1;e=e.message,t.uid=e.uid,t.freelunch=e.freelunch,t.member=e.member,t.mine_partaker=e.mine_partaker,t.partake_status=e.partake_status,t.record=e.record,t.winner_partaker=e.winner_partaker,t.onGetPartakers()})},onGetPartakers:function(){var t=this;if(this.partakers.loaded)return!1;this.util.request({url:"freeLunch/freeLunch/partakers",data:{min:this.partakers.min,record_id:this.record_id}}).then(function(a){var e=a.data.message;if(e.errno)return t.util.$toast(e.message),!1;t.partakers.min=e.min,t.partakers.data=[].concat(r()(t.partakers.data),r()(e.message)),t.partakers.data.length||(t.partakers.empty=!0),(e.message&&e.message.length<10||!t.partakers.min)&&(t.partakers.loaded=!0),t.partakers.loading=!1})},onRefresh:function(){this.uid="",this.freelunch={},this.member={},this.mine_partaker={},this.partake_status={},this.record={},this.winner_partaker={},this.partakers={min:0,loading:!0,loaded:!1,empty:!1,data:[]},this.onLoad()}},created:function(){if(!this.$route.query.record_id)return!1;this.record_id=this.$route.query.record_id},mounted:function(){this.onLoad()}},c={render:function(){var t=this,a=t.$createElement,e=t._self._c||a;return e("div",{attrs:{id:"freeLunch-detail"}},[e("public-header",{attrs:{title:"参与详情"}}),t._v(" "),e("div",{staticClass:"content"},[e("div",{staticClass:"prize-status"},[e("div",{staticClass:"batch"},[e("span",[t._v("第"+t._s(t.record.serial_sn)+"期")])]),t._v(" "),2==t.record.status?e("div",[t.record.reward_uid==t.uid?[e("p",[t._v("恭喜您 中奖了")]),t._v(" "),e("div",{staticClass:"no-prize"},[e("span",[t._v("获得"+t._s(t.record.reward_fee)+"元红包")])])]:[e("p",[t._v("很遗憾 未中奖")]),t._v(" "),e("div",{staticClass:"no-prize"},[e("span",[t._v(t._s(t.record.reward_fee)+"元红包与你擦肩而过")])])],t._v(" "),e("div",{staticClass:"winning-detail"},[e("div",{staticClass:"winning-inner"},[e("div",{staticClass:"winning-code"},[t._v("中奖号码")]),t._v(" "),e("div",{staticClass:"lucky-number"},t._l(t.record.reward_number,function(a,s){return e("span",{key:s,staticClass:"digit"},[t._v(t._s(a))])}),0),t._v(" "),e("div",{staticClass:"details"},[e("img",{attrs:{src:t.member.avatar}}),t._v(" "),e("div",{staticClass:"participate-info"},[e("span",{staticClass:"participate-name"},[t._v(t._s(t.member.nickname)+" 本期参与 "+t._s(t.winner_partaker.nums)+" 次")]),t._v(" "),t._l(t.winner_partaker.data,function(a,s){return e("div",{key:s,staticClass:"participate-time"},[t._v("参与时间: "+t._s(a.addtime_cn))])})],2)])])])],2):1==t.record.status?e("div",[e("p",[t._v("活动进行中")]),t._v(" "),e("div",{staticClass:"prize-info"},[e("div",{staticClass:"pirze-inner"},[e("div",{staticClass:"draw-condition"},[e("span",[t._v(t._s(t.record.reward_fee)+"元无门槛红包")])]),t._v(" "),e("div",{staticClass:"progress"},[e("div",{staticClass:"progress-bar",style:{width:t.record.percent+"%"}})]),t._v(" "),e("div",{staticClass:"prize-data"},[t._v("\n\t\t\t\t\t\t\t总需人次: "+t._s(t.record.partaker_total)+" "),e("span",{staticClass:"vertical-line"},[t._v("|")]),t._v(" 剩余人次: "+t._s(t.record.partaker_dosage)+"\n\t\t\t\t\t\t")])])])]):t._e(),t._v(" "),e("router-link",{staticClass:"open-popup",attrs:{tag:"div",to:t.util.getUrl({path:"/package/pages/freelunch/rule"})}},[t._v("活动规则")])],1),t._v(" "),e("div",{staticClass:"participate"},[t.mine_partaker.nums&&t.mine_partaker.nums>0?[e("div",{staticClass:"participate-num"},[t._v("\n\t\t\t\t\t我参与了:\n\t\t\t\t\t"),e("span",[t._v(t._s(t.mine_partaker.nums))]),t._v(" "),e("strong",[t._v("次")])]),t._v(" "),t._l(t.mine_partaker.data,function(a,s){return e("div",{key:s,staticClass:"participate-code"},[t._v("\n\t\t\t\t\t参与号码:\n\t\t\t\t\t"),e("strong",[t._v(t._s(a.number))])])})]:e("p",[t._v("您没有参与本期活动，立即参与领红包吧！")])],2),t._v(" "),e("div",{staticClass:"current-participant"},[e("div",{staticClass:"participant-title van-hairline--bottom"},[e("span",[t._v("本期参与人")]),t._v(" "),e("span",{staticClass:"start-time"},[t._v(t._s(t.record.startime_cn)+" 开始")])]),t._v(" "),t.partakers.empty?t._e():e("div",{staticClass:"participant-list"},[e("van-list",{attrs:{finished:t.partakers.loaded,offset:150,"immediate-check":!1},on:{load:t.onGetPartakers},model:{value:t.partakers.loading,callback:function(a){t.$set(t.partakers,"loading",a)},expression:"partakers.loading"}},t._l(t.partakers.data,function(a,s){return e("div",{key:s,staticClass:"participant-item"},[e("div",{staticClass:"col-20"},[e("img",{attrs:{src:a.avatar,alt:""}})]),t._v(" "),e("div",{staticClass:"col-80 van-hairline--bottom"},[e("span",{staticClass:"participant-name"},[t._v(t._s(a.nickname))]),t._v(" "),e("span",{staticClass:"participant-time"},[t._v(t._s(a.addtime))])])])}),0)],1),t._v(" "),t.partakers.loaded&&!t.partakers.empty?e("div",{staticClass:"loaded"},[e("div",{staticClass:"loaded-tips",staticStyle:{"background-color":"#fff"}},[t._v("没有更多了")])]):t._e(),t._v(" "),t.partakers.empty?e("div",{staticClass:"loaded"},[e("div",{staticClass:"loaded-tips",staticStyle:{"background-color":"#fff"}},[t._v("暂无记录")])]):t._e()])]),t._v(" "),e("div",{staticClass:"bar van-hairline--top"},[2==t.record.status?e("div",[e("span",{staticClass:"col-50"},[t._v("新的一期正在火热进行中…")]),t._v(" "),e("router-link",{staticClass:"join-now",attrs:{to:t.util.getUrl({path:"/package/pages/freelunch/index"})}},[t._v("立即参与")])],1):e("div",[e("div",{staticClass:"col-60"},[0==t.partake_status.errno?e("router-link",{staticClass:"partake-times",attrs:{to:t.util.getUrl({path:"/package/pages/freelunch/index"})}},[t.mine_partaker.nums&&t.mine_partaker.nums>0?[t._v("\n\t\t\t\t\t\t再次参与,中奖率翻倍\n\t\t\t\t\t")]:e("tempalte",[t._v("立即参与")])],2):e("router-link",{staticClass:"no-partake-times",attrs:{to:""}},[t._v(t._s(t.partake_status.message))])],1),t._v(" "),e("div",{staticClass:"col-40"},[e("div",{staticClass:"refresh",on:{click:t.onRefresh}},[t._v("刷新进度")])])])])],1)},staticRenderFns:[]};var l=e("VU/8")(d,c,!1,function(t){e("/8YR")},null,null);a.default=l.exports}});