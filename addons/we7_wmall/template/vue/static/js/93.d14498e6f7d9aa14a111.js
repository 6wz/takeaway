webpackJsonp([93],{QCtQ:function(t,s,a){"use strict";Object.defineProperty(s,"__esModule",{value:!0});var e=a("Gu7T"),i=a.n(e),r=a("Cz8s"),o=a("deIj"),n={data:function(){return{adv:[],category:[],records:{page:1,psize:20,loading:!0,finished:!1,empty:!1,data:[]},member:{},showPreLoading:!0,isRefresh:!1}},components:{PublicHeader:r.a},methods:{onLoad:function(){var t=this;Object(o.a)({vue:t,url:"creditshop/index",data:{},success:function(s){t.isRefresh=!1,t.adv=[].concat(i()(t.adv),i()(s.adv)),t.category=[].concat(i()(t.category),i()(s.category)),t.member=s.member,t.records.data=[].concat(i()(t.records.data),i()(s.goods)),t.records.data.length||(t.records.empty=!0),s.goods&&s.goods.length<t.records.psize&&(t.records.finished=!0),t.records.page++,t.records.loading=!1}})},onGetGoods:function(){Object(o.b)({vue:this,url:"creditshop/index/goods",recordsName:"goods",data:{page:this.records.page,psize:this.records.psize}})},onPullDownRefresh:function(){this.records={page:1,psize:20,loading:!0,finished:!1,empty:!1,data:[]},this.adv=[],this.category=[],this.onLoad()}},mounted:function(){this.onLoad()}},d={render:function(){var t=this,s=t.$createElement,a=t._self._c||s;return a("div",{attrs:{id:"creditshop-index"}},[a("public-header",{attrs:{title:"积分商城"}}),t._v(" "),a("div",{staticClass:"content"},[a("van-pull-refresh",{on:{refresh:function(s){return t.onPullDownRefresh()}},model:{value:t.isRefresh,callback:function(s){t.isRefresh=s},expression:"isRefresh"}},[t.adv.length>0?a("div",{staticClass:"creditshop-slider"},[a("van-swipe",{attrs:{autoplay:5e3,"indicator-color":"#ff2d4b"}},t._l(t.adv,function(s,e){return a("van-swipe-item",{key:s.id},[a("div",{staticClass:"img-wrap",on:{click:function(a){return t.util.jsUrl(s.wxapp_link)}}},[a("img",{attrs:{src:s.thumb,alt:""}})])])}),1)],1):t._e(),t._v(" "),a("ul",{staticClass:"flex-lr font-14 bg-default margin-10-b"},[a("li",{staticClass:"flex-1 flex-center padding-10-tb van-hairline--right"},[a("i",{staticClass:"icon icon-recharge margin-5-r"}),t._v("积分:\n\t\t\t\t\t"),a("span",{staticClass:"c-danger"},[t._v(t._s(t.member.credit1))])]),t._v(" "),a("router-link",{staticClass:"flex-center flex-1 padding-10-tb",attrs:{tag:"li",to:t.util.getUrl({path:"pages/creditshop/list"})}},[a("i",{staticClass:"icon icon-order margin-5-r"}),t._v("兑换记录\n\t\t\t\t")])],1),t._v(" "),t.category.length>0?a("van-row",{staticClass:"creditshop-navs"},t._l(t.category,function(s,e){return a("van-col",{key:s.id,attrs:{span:"6"}},[a("div",{staticClass:"nav-item"},[a("router-link",{staticClass:"thumb-wrap",attrs:{tag:"div",to:t.util.getUrl({path:"/pages/creditshop/goods",query:{category_id:s.id}})}},[a("img",{attrs:{src:s.thumb,alt:""}})]),t._v(" "),a("div",{staticClass:"title"},[t._v(t._s(s.name))])],1)])}),1):t._e(),t._v(" "),t.records.data.length>0?a("div",{staticClass:"creditshop-goods"},[a("div",{staticClass:"goods-title-wrap"},[a("div",{staticClass:"goods-title van-hairline--bottom"},[a("div",{staticClass:"flex font-14"},[a("i",{staticClass:"icon icon-gifts c-gray margin-10-r font-18"}),t._v(" "),a("span",[t._v("积分兑换")])]),t._v(" "),a("div",{staticClass:"flex c-gray font-14 hide"},[a("span",{staticClass:"font-13"},[t._v("更多")]),t._v(" "),a("i",{staticClass:"icon icon-right"})])])]),t._v(" "),t.records.empty?a("div",{staticClass:"no-data"},[a("img",{attrs:{src:"static/img/goods_no_con.png",alt:""}}),t._v(" "),a("p",[t._v("暂无积分兑换商品!")])]):a("van-list",{attrs:{finished:t.records.finished,offset:100,"immediate-check":!1},on:{load:t.onGetGoods},model:{value:t.records.loading,callback:function(s){t.$set(t.records,"loading",s)},expression:"records.loading"}},[a("div",{staticClass:"goods-list"},t._l(t.records.data,function(s,e){return a("div",{key:s.id,staticClass:"goods-item"},[a("div",{staticClass:"thumb"},[a("img",{attrs:{src:s.thumb,alt:""}})]),t._v(" "),a("div",{staticClass:"goods-name ellipsis"},[t._v(t._s(s.title))]),t._v(" "),a("div",{staticClass:"price font-12 ellipsis"},[a("span",{staticClass:"c-danger font-15"},[t._v(t._s(s.use_credit1))]),t._v(" "),a("span",[t._v("积分")]),t._v(" "),s.use_credit2>0?a("span",{staticClass:"c-danger"},[t._v("+"),a("span",{staticClass:"font-15"},[t._v("￥"+t._s(s.use_credit2))])]):t._e()]),t._v(" "),a("div",{staticClass:"exchange"},[a("router-link",{staticClass:"exchange-btn c-danger",attrs:{tag:"span",to:t.util.getUrl({path:"/pages/creditshop/goodsDetail",query:{id:s.id}})}},[t._v("立即兑换")])],1)])}),0),t._v(" "),a("div",{staticClass:"loaded-group"},[t.records.finished?a("div",{staticClass:"loaded"},[a("div",{staticClass:"loaded-tips"},[t._v("没有更多了")])]):t._e()])])],1):t._e()],1)],1),t._v(" "),t.showPreLoading?a("iloading"):t._e()],1)},staticRenderFns:[]};var c=a("VU/8")(n,d,!1,function(t){a("gM7O")},null,null);s.default=c.exports},gM7O:function(t,s){}});