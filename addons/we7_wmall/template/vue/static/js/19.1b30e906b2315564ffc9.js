webpackJsonp([19],{Z3HU:function(t,e){},usLT:function(t,e,s){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var a=s("Gu7T"),i=s.n(a),r=s("Cz8s"),o=s("mzkE"),n={components:{PublicHeader:r.a,PublicFooter:o.a},data:function(){return{trade_type:0,refresh:0,active:0,now_active:0,records:{page:1,psize:10,loaded:!1,loading:!1,empty:!1,data:[]},title:{1:"全部",2:"佣金入账",3:"申请提现",4:"其他变动"},showPreLoading:!0}},methods:{onLoad:function(){var t=this;if(1==this.refresh&&(this.records={page:1,psize:10,loaded:!1,loading:!1,empty:!1,data:[]}),this.records.loaded)return!1;this.records.loading=!0,this.util.request({url:"storebd/current",data:{page:this.records.page,psize:this.records.psize,trade_type:this.trade_type}}).then(function(e){t.showPreLoading=!1;var s=e.data.message;t.records.data=[].concat(i()(t.records.data),i()(s.message.current)),s.message.current.length<t.records.psize&&(t.records.loaded=!0,t.records.data.length||(t.records.empty=!0)),t.records.page++,t.records.loading=!1,t.now_active=t.active,t.refresh=0})},onChangeStatus:function(t,e){this.now_active!=t&&(this.refresh=1),this.trade_type=t,this.onLoad()}},mounted:function(){this.onLoad()}},d={render:function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{attrs:{id:"storebd-current"}},[s("public-header",{attrs:{title:"佣金明细"}}),t._v(" "),s("div",{staticClass:"content"},[s("van-tabs",{on:{click:t.onChangeStatus},model:{value:t.active,callback:function(e){t.active=e},expression:"active"}},t._l(4,function(e,a){return s("van-tab",{key:a,attrs:{title:t.title[e]}},[t.records.empty?s("div",{staticClass:"current-list"},[s("div",{staticClass:"no-data"},[s("div",{staticClass:"bg"}),t._v(" "),s("p",[t._v("暂时没有佣金明细哦～")])])]):s("van-list",{attrs:{finished:t.records.loaded,offset:100,"immediate-check":!1},on:{load:t.onLoad},model:{value:t.records.loading,callback:function(e){t.$set(t.records,"loading",e)},expression:"records.loading"}},[s("div",{staticClass:"current-list"},[s("div",{staticClass:"list-block"},[s("ul",{staticClass:"list"},t._l(t.records.data,function(e,a){return s("li",{key:a,staticClass:"item-content"},[s("router-link",{attrs:{to:""}},[s("div",{staticClass:"item-inner van-hairline--bottom"},[s("div",{staticClass:"item-title"},[1==e.trade_type?s("div",{staticClass:"item-title-top"},[t._v("佣金入账")]):2==e.trade_type?s("div",{staticClass:"item-title-top"},[t._v("申请提现")]):3==e.trade_type?s("div",{staticClass:"item-title-top"},[t._v("其他变动")]):t._e(),t._v(" "),s("div",{staticClass:"item-title-bottom"},[t._v(t._s(e.addtime_cn))])]),t._v(" "),s("div",{staticClass:"item-after"},[s("div",{staticClass:"item-title-top",class:{"color-success":e.fee>0,"color-danger":e.fee<0}},[t._v(t._s(e.fee>0?"+"+e.fee:e.fee))]),t._v(" "),s("div",{staticClass:"item-title-bottom"},[t._v("¥"+t._s(e.amount))])]),t._v(" "),s("van-icon",{staticClass:"item-inner-icon",attrs:{name:"right"}})],1)])],1)}),0)])])])],1)}),1)],1),t._v(" "),s("transition",{attrs:{name:"loading"}},[t.showPreLoading?s("iloading"):t._e()],1)],1)},staticRenderFns:[]};var c=s("VU/8")(n,d,!1,function(t){s("Z3HU")},null,null);e.default=c.exports}});