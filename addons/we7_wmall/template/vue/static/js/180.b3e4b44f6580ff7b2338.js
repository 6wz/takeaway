webpackJsonp([180],{"32eY":function(t,i){},TE5m:function(t,i,a){"use strict";Object.defineProperty(i,"__esModule",{value:!0});var s=a("Gu7T"),e=a.n(s),n=a("woOf"),r=a.n(n),c=a("Cz8s"),l=a("75NE"),o=a("deIj"),v={components:{PublicHeader:c.a,CountDown:l.a},data:function(){return{activityid:0,uid:0,activity:{},takeinfo:{helper:[]},rank:[],self:1,more:[],rankType:"helper",bargainSuccessPopup:!1,bargainprice:0,showPreLoading:!0,zhezhaoShow:!1}},methods:{onLoad:function(){var t=this;Object(o.a)({vue:t,url:"kanjia/activity/share",data:{activityid:t.activityid,uid:t.uid,page:1,psize:6},success:function(i){t.activity=r()(t.activity,i.activity),t.takeinfo=r()(t.takeinfo,i.takeinfo),t.rank=[].concat(e()(i.rank)),t.self=i.self,t.more=[].concat(e()(i.more));var a=window._share;a&&(a.success=function(){t.util.request({url:"gohome/common/share",data:{id:t.id,type:"kanjia"}}).then(function(t){})}),t.wx.share(a)}})},onToggleRank:function(t){t!=this.rankType&&(this.rankType=t)},onTogglePopup:function(){this.bargainSuccessPopup=!this.bargainSuccessPopup},onBargain:function(){var t=this;Object(o.c)({vue:t,url:"kanjia/activity/bargain",data:{activityid:t.activityid,uid:t.uid},success:function(i){var a=i;t.bargainprice=a.bargainprice,t.takeinfo.price=a.afterprice,t.takeinfo.per_price=(t.activity.oldprice-t.takeinfo.price)/(t.activity.oldprice-t.activity.price)*100,t.takeinfo.helper.push(a),t.onTogglePopup()}})}},mounted:function(){this.$route.query&&this.$route.query.activityid&&(this.activityid=this.$route.query.activityid),this.$route.query&&this.$route.query.uid&&(this.uid=this.$route.query.uid),this.onLoad()}},d={render:function(){var t=this,i=t.$createElement,a=t._self._c||i;return a("div",{attrs:{id:"kanjia-share"}},[a("div",{staticClass:"content"},[t._m(0),t._v(" "),a("div",{staticClass:"bottom"},[1==t.activity.status?a("div",{staticClass:"flex padding-15-l c-white margin-10-b"},[a("span",{staticClass:"font-12 margin-5-r"},[t._v("距结束")]),t._v(" "),a("count-down",{attrs:{endTime:t.activity.endtime}})],1):t._e(),t._v(" "),a("div",{staticClass:"margin-15-lr margin-15-b padding-15 bg-default radius-3"},[a("div",{staticClass:"flex-lr"},[a("div",{staticClass:"avatar"},[a("img",{staticClass:"img-100",attrs:{src:t.takeinfo.avatar,alt:""}})]),t._v(" "),a("div",{staticClass:"user-info"},[a("div",{staticClass:"font-12 margin-5-b"},[t._v(t._s(t.takeinfo.nickname))]),t._v(" "),a("div",{staticClass:"font-500"},[t._v("我正在"+t._s(t.activity.price)+"元抢这件商品，快来帮帮我吧!")])])]),t._v(" "),a("router-link",{staticClass:"bg-gray padding-15 radius-3 margin-15-t flex-lr",attrs:{tag:"div",to:t.util.getUrl({path:"/gohome/pages/kanjia/detail",query:{id:t.activityid}})}},[a("div",{staticClass:"goods-thumb"},[a("img",{staticClass:"img-100",attrs:{src:t.activity.thumb,alt:""}})]),t._v(" "),a("div",{staticClass:"goods-info"},[a("ul",{},[t.activity.store?a("li",{staticClass:"font-500"},[t._v(t._s(t.activity.store.title))]):t._e(),t._v(" "),a("li",{staticClass:"margin-5-t"},[t._v(t._s(t.activity.name))])]),t._v(" "),a("div",{staticClass:"flex"},[a("div",{staticClass:"c-danger font-15 font-500 margin-5-r"},[t._v("¥"+t._s(t.activity.price))]),t._v(" "),a("div",{staticClass:"c-gray font-13 line-through"},[t._v("¥"+t._s(t.activity.oldprice))])])])]),t._v(" "),1==t.takeinfo.status?[a("div",{staticClass:"progress margin-15-t"},[a("div",{staticClass:"progress-inner"},[a("div",{staticClass:"now-price",style:{left:t.takeinfo.per_price+"%"}},[t._v("现价¥"+t._s(t.takeinfo.price))]),t._v(" "),a("div",{staticClass:"bar"},[a("div",{staticClass:"bar-inner",style:{width:t.takeinfo.per_price+"%"}})])]),t._v(" "),a("div",{staticClass:"flex-lr font-14 margin-5-t"},[a("div",[t._v("¥"+t._s(t.activity.oldprice))]),t._v(" "),a("div",{staticClass:"c-danger"},[t._v("¥"+t._s(t.activity.price))])])])]:2==t.takeinfo.status?[t._m(1)]:t._e(),t._v(" "),1==t.self?a("div",{staticClass:"btn-group margin-15-t flex-center"},[a("div",{staticClass:"btn-item he margin-10-lr",on:{click:function(i){t.zhezhaoShow=!t.zhezhaoShow}}},[t._v("找人帮砍")]),t._v(" "),1==t.takeinfo.now_price_buy?a("router-link",{staticClass:"btn-item he margin-10-lr",attrs:{tag:"div",to:t.util.getUrl({path:"/gohome/pages/kanjia/order/create",query:{activityid:t.activityid}})}},[t._v("当前价格购买")]):t.takeinfo.price==t.activity.price?a("router-link",{staticClass:"btn-item he margin-10-lr",attrs:{tag:"div",to:t.util.getUrl({path:"/gohome/pages/kanjia/order/create",query:{activityid:t.activityid}})}},[t._v("立即下单")]):t._e()],1):0==t.self?a("div",{staticClass:"btn-group margin-15-t flex-lr"},[1==t.takeinfo.status?a("div",{staticClass:"btn-item he",on:{click:t.onBargain}},[t._v("帮TA砍价")]):t._e(),t._v(" "),1==t.takeinfo.status?a("div",{staticClass:"btn-item he",on:{click:function(i){t.zhezhaoShow=!t.zhezhaoShow}}},[t._v("帮TA分享")]):t._e(),t._v(" "),a("router-link",{staticClass:"btn-item me",attrs:{tag:"div",to:t.util.getUrl({path:"/gohome/pages/kanjia/detail",query:{id:t.activityid}})}},[t._v("我也要抢")])],1):t._e()],2),t._v(" "),a("div",{staticClass:"margin-15 bg-default rank"},[a("ul",{staticClass:"flex-lr rank-title"},[a("li",{class:{active:"helper"==t.rankType},on:{click:function(i){return t.onToggleRank("helper")}}},[t._v("帮砍团")]),t._v(" "),a("li",{class:{active:"rank"==t.rankType},on:{click:function(i){return t.onToggleRank("rank")}}},[t._v("排行榜")])]),t._v(" "),"helper"==t.rankType?a("div",{staticClass:"padding-15-lr padding-15-b"},[t.takeinfo.helper&&t.takeinfo.helper.length>0?t._l(t.takeinfo.helper,function(i,s){return a("div",{key:s,staticClass:"rank-item margin-15-t flex-lr"},[a("div",{staticClass:"avatar"},[a("img",{staticClass:"img-100",attrs:{src:i.avatar,alt:""}})]),t._v(" "),a("div",{staticClass:"user-info flex-lr padding-10-f"},[a("ul",[a("li",{staticClass:"margin-5-b"},[t._v(t._s(i.nickname))]),t._v(" "),a("li",{staticClass:"font-12 c-gray"},[t._v(t._s(i.createtime_cn))])]),t._v(" "),a("div",{staticClass:"flex"},[a("div",{staticClass:"icon-axe margin-5-r"}),t._v(" "),a("div",{staticClass:"c-danger"},[t._v("砍掉 ¥"+t._s(i.bargainprice))])])])])}):[a("div",{staticClass:"margin-15-t text-center font-14 c-gray"},[t._v("\n\t\t\t\t\t\t\t暂时没有人帮忙砍价哦~\n\t\t\t\t\t\t")])]],2):"rank"==t.rankType?a("div",{staticClass:"padding-15-lr padding-15-b"},[t.rank.length>0?t._l(t.rank,function(i,s){return a("div",{key:s,staticClass:"rank-item margin-15-t flex-lr"},[a("div",{staticClass:"avatar"},[a("img",{staticClass:"img-100",attrs:{src:i.avatar,alt:""}})]),t._v(" "),a("div",{staticClass:"user-info flex-lr padding-10-f"},[a("ul",[a("li",{staticClass:"margin-5-b"},[t._v(t._s(i.nickname))]),t._v(" "),a("li",{staticClass:"font-12 c-gray"},[t._v(t._s(i.createtime_cn))])]),t._v(" "),a("div",{staticClass:"flex"},[a("div",{staticClass:"icon-axe margin-5-r"}),t._v(" "),a("div",{staticClass:"c-danger"},[t._v("砍掉 ¥"+t._s(i.bargainprice))])])])])}):a("div",{staticClass:"margin-15-t text-center font-14 c-gray"},[t._v("\n\t\t\t\t\t\t没有人登榜哦~\n\t\t\t\t\t")])],2):t._e()]),t._v(" "),t.more.length>0?[a("div",{staticClass:"margin-15-t c-white text-center font-14"},[t._v("更多活动")]),t._v(" "),a("div",{staticClass:"activity-list"},t._l(t.more,function(i,s){return a("router-link",{key:i.id,staticClass:"activity-item",attrs:{tag:"div",to:t.util.getUrl({path:"/gohome/pages/kanjia/detail",query:{id:i.id}})}},[a("div",{staticClass:"item-inner"},[a("div",{staticClass:"thumb"},[a("img",{staticClass:"img-100",attrs:{src:i.thumb,alt:""}})]),t._v(" "),a("div",{staticClass:"goods-title"},[t._v(t._s(i.name))]),t._v(" "),a("div",{staticClass:"flex-lr"},[a("div",{staticClass:"flex"},[a("span",{staticClass:"c-danger font-500 font-15 margin-5-r"},[t._v("¥"+t._s(i.price))]),t._v(" "),a("div",{staticClass:"c-gray line-through font-12"},[t._v("¥"+t._s(i.oldprice))])]),t._v(" "),a("div",{staticClass:"c-gray font-12"},[t._v("已售"+t._s(i.sailed)+"份")])])])])}),1)]:t._e()],2)]),t._v(" "),a("van-popup",{staticClass:"popup-remind",model:{value:t.bargainSuccessPopup,callback:function(i){t.bargainSuccessPopup=i},expression:"bargainSuccessPopup"}},[a("div",{staticClass:"remind-tip"},[a("p",[t._v("恭喜! 你成功帮")]),t._v(" "),a("p",{staticClass:"c-danger w-100 ellipsis"},[t._v(t._s(t.takeinfo.nickname))]),t._v(" "),a("p",[t._v("砍掉了")]),t._v(" "),a("div",{staticClass:"c-danger"},[a("span",{staticClass:"font-20"},[t._v("¥")]),t._v(" "),a("span",{staticClass:"cut-price"},[t._v(t._s(t.bargainprice))])])]),t._v(" "),a("div",{staticClass:"remind-close",on:{click:t.onTogglePopup}},[t._v("我知道了")])]),t._v(" "),a("transition",{attrs:{name:"van-fade"}},[t.zhezhaoShow?a("div",{staticClass:"share-zhezhao",on:{click:function(i){t.zhezhaoShow=!t.zhezhaoShow}}},[a("img",{attrs:{src:"static/img/share-layer.png",alt:""}})]):t._e()]),t._v(" "),t.showPreLoading?a("iloading"):t._e()],1)},staticRenderFns:[function(){var t=this.$createElement,i=this._self._c||t;return i("div",{staticClass:"top-logo"},[i("img",{staticClass:"w-100",attrs:{src:"static/img/kanjia_share_top.jpg",alt:""}})])},function(){var t=this.$createElement,i=this._self._c||t;return i("div",{staticClass:"kanjia-success"},[i("img",{attrs:{src:"static/img/kanjia_success.png",alt:""}})])}]};var g=a("VU/8")(v,d,!1,function(t){a("32eY")},null,null);i.default=g.exports}});