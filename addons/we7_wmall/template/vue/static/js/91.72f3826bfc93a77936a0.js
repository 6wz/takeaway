webpackJsonp([91],{AxHG:function(t,s,a){"use strict";Object.defineProperty(s,"__esModule",{value:!0});var e=a("Cz8s"),i=a("mzkE"),r={components:{PublicHeader:e.a,PublicFooter:i.a},data:function(){return{popupStatus:!1,agreementShow:!1,member:{},spread:{},order:"",down:"",current:"",commission:"",upgrade_explain:"",showPreLoading:!0,menufooter:{}}},methods:{onLoad:function(){var t=this;this.util.request({url:"spread/index",data:{menufooter:1}}).then(function(s){var a=s.data.message;-1e3!=a.errno?(a=a.message,t.member=a.member,t.commission=a.commission,t.order=a.order,t.spread=a.spread,t.down=a.down,t.current=a.current,t.upgrade_explain=a.upgrade_explain,t.showPreLoading=!1,t.menufooter=window.menufooter):t.$router.replace(t.util.getUrl({path:"/pages/spread/register"}))})},onTogglePopup:function(){this.popupStatus=!this.popupStatus},onCopy:function(t){this.onTogglePopup(),this.util.$toast("复制成功")},onError:function(t){this.util.$toast("复制失败")}},mounted:function(){this.onLoad()}},o={render:function(){var t=this,s=t.$createElement,a=t._self._c||s;return a("div",{attrs:{id:"spread-index1"}},[a("public-header",{attrs:{title:"推广员"}}),t._v(" "),a("public-footer",{attrs:{preLoading:t.showPreLoading,menufooter:t.menufooter}}),t._v(" "),a("div",{staticClass:"content"},[a("div",{staticClass:"header-info bg-danger"},[a("div",{staticClass:"flex-lr"},[a("div",{staticClass:"spreader-info flex"},[a("div",{staticClass:"avatar"},[a("img",{attrs:{src:t.member.avatar,alt:""}})]),t._v(" "),a("div",{},[a("div",{staticClass:"flex margin-15-b"},[a("span",{staticClass:"nickname font-20 ellipsis"},[t._v(t._s(t.member.nickname))]),a("span",{staticClass:"group-name"},[t._v(t._s(t.member.groupname?t.member.groupname:"暂无等级"))])]),t._v(" "),a("div",{staticClass:"font-14"},[t._v("邀请码: "+t._s(t.member.uid))])])]),t._v(" "),a("router-link",{attrs:{tag:"div",to:t.util.getUrl({path:"/pages/spread/qrcode"})}},[a("i",{staticClass:"icon icon-qrcode"})])],1),t._v(" "),a("div",{staticClass:"flex-lr font-13 padding-15-tb"},[a("div",[t._v("成功提现佣金 ¥"+t._s(t.spread.commission_getcash_success))]),t._v(" "),a("div",[t._v("可提现佣金 ¥"+t._s(t.spread.spreadcredit2))])])]),t._v(" "),a("div",{staticClass:"link-group"},[a("van-cell-group",{staticClass:"border-0px"},[a("van-cell",{attrs:{"is-link":"",value:"¥"+t.spread.commission_grandtotal,to:t.util.getUrl({path:"/pages/spread/commission"})}},[a("div",{staticClass:"flex",attrs:{slot:"title"},slot:"title"},[a("i",{staticClass:"icon icon-refund"}),t._v("\n\t\t\t\t\t\t推广佣金\n\t\t\t\t\t")])]),t._v(" "),a("van-cell",{attrs:{"is-link":"",value:t.current+"笔",to:t.util.getUrl({path:"/pages/spread/current"})}},[a("div",{staticClass:"flex",attrs:{slot:"title"},slot:"title"},[a("i",{staticClass:"icon icon-list"}),t._v("\n\t\t\t\t\t\t佣金明细\n\t\t\t\t\t")])]),t._v(" "),a("van-cell",{attrs:{"is-link":"",value:t.commission+"笔",to:t.util.getUrl({path:"/pages/spread/getCash/index"})}},[a("div",{staticClass:"flex",attrs:{slot:"title"},slot:"title"},[a("i",{staticClass:"icon icon-sort"}),t._v("\n\t\t\t\t\t\t提现明细\n\t\t\t\t\t")])]),t._v(" "),a("van-cell",{attrs:{"is-link":"",value:t.order+"笔",to:t.util.getUrl({path:"/pages/spread/order"})}},[a("div",{staticClass:"flex",attrs:{slot:"title"},slot:"title"},[a("i",{staticClass:"icon icon-order"}),t._v("\n\t\t\t\t\t\t推广订单\n\t\t\t\t\t")])]),t._v(" "),a("van-cell",{attrs:{"is-link":"",value:t.down+"人",to:t.util.getUrl({path:"/pages/spread/down"})}},[a("div",{staticClass:"flex",attrs:{slot:"title"},slot:"title"},[a("i",{staticClass:"icon icon-friend"}),t._v("\n\t\t\t\t\t\t我的团队\n\t\t\t\t\t")])]),t._v(" "),a("van-cell",{attrs:{"is-link":"",value:"",to:t.util.getUrl({path:"/pages/spread/rank"})}},[a("div",{staticClass:"flex",attrs:{slot:"title"},slot:"title"},[a("i",{staticClass:"icon icon-hot1"}),t._v("\n\t\t\t\t\t\t佣金排名\n\t\t\t\t\t")])])],1),t._v(" "),a("div",{staticClass:"padding-15-tb"},[a("div",{staticClass:"invite",on:{click:t.onTogglePopup}},[t._v("邀请好友赚佣金")])])],1)]),t._v(" "),a("van-popup",{staticClass:"popup-invite",attrs:{position:"bottom"},model:{value:t.popupStatus,callback:function(s){t.popupStatus=s},expression:"popupStatus"}},[a("van-row",[a("van-col",{attrs:{span:"8"}},[a("router-link",{attrs:{tag:"div",to:t.util.getUrl({path:"/pages/spread/poster"})}},[a("img",{attrs:{src:"static/img/poster.png",alt:""}}),t._v(" "),a("div",{staticClass:"margin-10-t"},[t._v("生成海报")])])],1),t._v(" "),a("van-col",{attrs:{span:"8"}},[a("router-link",{attrs:{tag:"div",to:t.util.getUrl({path:"/pages/spread/qrcode"})}},[a("img",{attrs:{src:"static/img/qrcode.png",alt:""}}),t._v(" "),a("div",{staticClass:"margin-10-t"},[t._v("分享二维码")])])],1),t._v(" "),a("van-col",{directives:[{name:"clipboard",rawName:"v-clipboard:copy",value:t.member.spread_url,expression:"member.spread_url",arg:"copy"},{name:"clipboard",rawName:"v-clipboard:success",value:t.onCopy,expression:"onCopy",arg:"success"},{name:"clipboard",rawName:"v-clipboard:error",value:t.onError,expression:"onError",arg:"error"}],attrs:{span:"8"}},[a("img",{attrs:{src:"static/img/link.png",alt:""}}),t._v(" "),a("div",{staticClass:"margin-10-t"},[t._v("复制链接")])])],1),t._v(" "),a("div",{staticClass:"icon icon-close",on:{click:t.onTogglePopup}})],1)],1)},staticRenderFns:[]};var n=a("VU/8")(r,o,!1,function(t){a("MJfB")},null,null);s.default=n.exports},MJfB:function(t,s){}});