webpackJsonp([2],{"+CBI":function(t,s,i){"use strict";var a=i("woOf"),e=i.n(a),n={props:{textOpen:{type:String,default:"开启"},textClose:{type:String,default:"关闭"},conditionOpen:{default:1},conditionClose:{default:0},value:0,keys:{type:String,default:""},extra:{type:Object,default:function(){return{}}}},methods:{onClick:function(){var t="";this.value==this.conditionOpen?t=this.conditionClose:this.value==this.conditionClose&&(t=this.conditionOpen);var s={keys:this.keys,value:t};s=e()(s,this.extra),this.$emit("change",s)}}},o={render:function(){var t=this,s=t.$createElement,i=t._self._c||s;return i("div",{staticClass:"iswitch",class:{close:t.value==t.conditionClose},on:{click:t.onClick}},[i("div",{staticClass:"block",class:{open:t.value==t.conditionOpen}}),t._v(" "),i("div",{staticClass:"text"},[i("div",{staticClass:"option",class:{selected:t.value==t.conditionOpen}},[t._v(t._s(t.textOpen))]),t._v(" "),i("div",{staticClass:"option",class:{selected:t.value==t.conditionClose}},[t._v(t._s(t.textClose))])])])},staticRenderFns:[]};var c=i("VU/8")(n,o,!1,function(t){i("w01T")},null,null);s.a=c.exports},"5mdU":function(t,s){},Ez5F:function(t,s,i){"use strict";Object.defineProperty(s,"__esModule",{value:!0});var a=i("Cz8s"),e=i("mzkE"),n=i("+CBI"),o=i("deIj"),c={data:function(){return{deliveryer:{id:0,avatar:"",work_status:0},stat:{errander:{num:0},takeout:{num:0},total:{fee:0}},showPreLoading:!0,menufooter:{}}},components:{publicHeader:a.a,publicFooter:e.a,iswitch:n.a},methods:{onLoad:function(){var t=this;Object(o.a)({vue:t,url:"delivery/member/mine/index",autoAssign:!0,variable:"deliveryer",data:{type:"today",menufooter:1},success:function(s){t.stat=t.util.extend(t.stat,s.stat)}})},jsToggleSwitch:function(t){this.util.jsToggleSwitch({vue:this,key:t.keys,value:t.value,url:"delivery/member/mine/setting",data:{which:"work_status"},confirm:"确定变更工作状态吗？"})}},mounted:function(){this.onLoad(),this.util.imap(),this.util.icloudapi()}},l={render:function(){var t=this,s=t.$createElement,i=t._self._c||s;return i("div",{attrs:{id:"member-mine"}},[i("public-header",{attrs:{title:"个人中心"}}),t._v(" "),i("public-footer",{attrs:{showPreLoading:t.showPreLoading,menufooter:t.menufooter}}),t._v(" "),i("div",{staticClass:"content"},[i("div",{staticClass:"member-header"},[i("div",{staticClass:"header-info flex-lr"},[i("div",{staticClass:"flex"},[i("div",{staticClass:"avatar"},[i("img",{staticClass:"img-100",attrs:{src:t.deliveryer.avatar,alt:""}})]),t._v(" "),i("div",{staticClass:"user-info"},[i("div",[t._v("#"+t._s(t.deliveryer.id)+" "+t._s(t.deliveryer.title))]),t._v(" "),i("div",{staticClass:"font-14"},[t._v("账户余额：¥"+t._s(t.deliveryer.credit2))])])]),t._v(" "),i("div",{staticClass:"user-status"},[i("iswitch",{attrs:{slot:"right-icon",value:t.deliveryer.work_status,"condition-open":"1","condition-close":"0","text-open":"接单","text-close":"休息",keys:"deliveryer.work_status"},on:{change:t.jsToggleSwitch},slot:"right-icon"})],1)]),t._v(" "),i("div",{staticClass:"statcenter"},[i("van-row",[i("van-col",{staticClass:"van-hairline--right",attrs:{span:"8"}},[i("div",{staticClass:"font-14"},[t._v("今日外卖单")]),t._v(" "),i("div",{staticClass:"padding-10-t font-weight font-bold"},[t._v(t._s(t.stat.takeout.num))])]),t._v(" "),i("van-col",{staticClass:"van-hairline--right",attrs:{span:"8"}},[i("div",{staticClass:"font-14"},[t._v("今日跑腿单")]),t._v(" "),i("div",{staticClass:"padding-10-t font-weight font-bold"},[t._v(t._s(t.stat.errander.num))])]),t._v(" "),i("van-col",{attrs:{span:"8"}},[i("div",{staticClass:"font-14"},[t._v("总收入")]),t._v(" "),i("div",{staticClass:"padding-10-t font-weight font-bold"},[t._v("¥"+t._s(t.stat.total.fee))])])],1)],1)]),t._v(" "),i("div",{staticClass:"block-nav van-hairline--tb"},[t._m(0),t._v(" "),i("div",{staticClass:"nav-list"},[i("van-row",[i("van-col",{staticClass:"nav-item",attrs:{span:"6"}},[i("router-link",{attrs:{tag:"div",to:"/pages/finance/current"}},[i("div",{staticClass:"nav-icon"},[i("i",{staticClass:"icon icon-news_hot_light"})]),t._v(" "),i("div",{staticClass:"text-icon"},[t._v("账户明细")])])],1),t._v(" "),i("van-col",{staticClass:"nav-item",attrs:{span:"6"}},[i("router-link",{attrs:{tag:"div",to:"/pages/finance/index"}},[i("div",{staticClass:"nav-icon"},[i("i",{staticClass:"icon icon-refund"})]),t._v(" "),i("div",{staticClass:"text-icon"},[t._v("资产")])])],1),t._v(" "),i("van-col",{staticClass:"nav-item",attrs:{span:"6"}},[i("router-link",{attrs:{tag:"div",to:"/pages/finance/getcashList"}},[i("div",{staticClass:"nav-icon"},[i("i",{staticClass:"icon icon-text1"})]),t._v(" "),i("div",{staticClass:"text-icon"},[t._v("提现记录")])])],1),t._v(" "),i("van-col",{staticClass:"nav-item",attrs:{span:"6"}},[i("router-link",{attrs:{tag:"div",to:"/pages/member/setting"}},[i("div",{staticClass:"nav-icon"},[i("i",{staticClass:"icon icon-settings"})]),t._v(" "),i("div",{staticClass:"text-icon"},[t._v("我的设置")])])],1),t._v(" "),i("van-col",{staticClass:"nav-item",attrs:{span:"6"}},[i("router-link",{attrs:{tag:"div",to:"/pages/comment/list"}},[i("div",{staticClass:"nav-icon"},[i("i",{staticClass:"icon icon-comments"})]),t._v(" "),i("div",{staticClass:"text-icon"},[t._v("我的评价")])])],1),t._v(" "),i("van-col",{staticClass:"nav-item",attrs:{span:"6"}},[i("router-link",{attrs:{tag:"div",to:"/pages/member/phonic"}},[i("div",{staticClass:"nav-icon"},[i("i",{staticClass:"icon icon-notice"})]),t._v(" "),i("div",{staticClass:"text-icon"},[t._v("语音设置")])])],1)],1)],1)]),t._v(" "),i("div",{staticClass:"block-nav van-hairline--tb"},[t._m(1),t._v(" "),i("div",{staticClass:"nav-list"},[i("van-row",[i("van-col",{staticClass:"nav-item",attrs:{span:"6"}},[i("router-link",{attrs:{tag:"div",to:"/pages/statcenter/index"}},[i("div",{staticClass:"nav-icon"},[i("i",{staticClass:"icon icon-rank"})]),t._v(" "),i("div",{staticClass:"text-icon"},[t._v("配送统计")])])],1)],1)],1)])])],1)},staticRenderFns:[function(){var t=this.$createElement,s=this._self._c||t;return s("div",{staticClass:"padding-15-l"},[s("div",{staticClass:"block-nav-title van-hairline--bottom font-14"},[this._v("我的账户")])])},function(){var t=this.$createElement,s=this._self._c||t;return s("div",{staticClass:"padding-15-l"},[s("div",{staticClass:"block-nav-title van-hairline--bottom font-14"},[this._v("统计")])])}]};var v=i("VU/8")(c,l,!1,function(t){i("5mdU")},null,null);s.default=v.exports},w01T:function(t,s){}});