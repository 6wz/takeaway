webpackJsonp([13],{"37pY":function(t,e,a){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var i=a("Gu7T"),s=a.n(i),n=a("Yo4o"),r=a("Cz8s"),o=a("mzkE"),c={name:"paotuiIndex",components:{PublicHeader:r.a,PublicFooter:o.a},data:function(){return{showPreLoading:!0,categorys:[],orders:[],delivery_num:0,config:{},deliveryers:[],menufooter:{}}},methods:{onLoad:function(){var t=this;this.util.request({url:"errander/index/index",data:{menufooter:1}}).then(function(e){t.showPreLoading=!1;var a=e.data.message;if(a.errno)return t.util.$toast(a.message,"",1e3),!1;a=a.message,t.categorys=[].concat(s()(a.categorys)),t.orders=[].concat(s()(a.orders)),t.delivery_num=a.delivery_num,t.config=a.config,t.deliveryers=a.deliveryers,t.menufooter=window.menufooter,t.loadmap()})},loadmap:function(){var t=this;Object(n.a)().then(function(e){var a=new e.Map("map-container",{resizeEnable:!0,zoom:11,center:[t.config.map.location_y,t.config.map.location_x]});for(var i in t.deliveryers){var s=t.deliveryers[i];if(s.location_x&&s.location_y)new e.Marker({position:[s.location_y,s.location_x],offset:new e.Pixel(-26,-80),content:'<div class="map-center"><img src="'+s.avatar+'"alt=""></div>'}).setMap(a)}})}},mounted:function(){this.onLoad()}},l={render:function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{attrs:{id:"paotui-index"}},[a("public-header",{attrs:{title:"随意购"}}),t._v(" "),a("public-footer",{attrs:{preLoading:t.showPreLoading,menufooter:t.menufooter}}),t._v(" "),a("div",{staticClass:"content"},[t._m(0),t._v(" "),t.orders.length>0?a("van-swipe",{staticClass:"order-swiper",attrs:{autoplay:3e3,vertical:"","show-indicators":!1}},t._l(t.orders,function(e,i){return a("van-swipe-item",{key:i},[a("router-link",{staticClass:"swiper-item flex-lr",attrs:{tag:"div",to:t.util.getUrl({path:"/pages/paotui/diy?id="+e.order_cid})}},[a("div",{staticClass:"left flex-lr"},[a("img",{attrs:{src:e.thumb,alt:""}}),t._v(" "),a("p",{staticClass:"ellipsis"},[t._v(t._s(e.anonymous_username)+"购买了"+t._s(e.goods_name))])]),t._v(" "),a("span",{staticClass:"icon icon-right"})])],1)}),1):t._e(),t._v(" "),a("div",{staticClass:"cate"},[a("p",{staticClass:"cate-title"},[t._v("\n\t\t\t\t平台共有 "),a("span",{staticClass:"c-danger"},[t._v(t._s(t.delivery_num))]),t._v(" 位骑士为您服务\n\t\t\t")]),t._v(" "),a("van-row",{staticClass:"cate-list"},t._l(t.categorys,function(e,i){return a("van-col",{key:i,attrs:{span:"6"}},[a("router-link",{staticClass:"cate-item",attrs:{tag:"div",to:t.util.getUrl({path:"/pages/paotui/diy?id="+e.id})}},[a("img",{attrs:{src:e.thumb,alt:""}}),t._v(" "),a("p",{staticClass:"ellipsis"},[t._v(t._s(e.name))])])],1)}),1)],1)],1)],1)},staticRenderFns:[function(){var t=this.$createElement,e=this._self._c||t;return e("div",{staticClass:"map-content"},[e("div",{attrs:{id:"map-container"}})])}]};var d=a("VU/8")(c,l,!1,function(t){a("Ha9P")},null,null);e.default=d.exports},Ha9P:function(t,e){}});