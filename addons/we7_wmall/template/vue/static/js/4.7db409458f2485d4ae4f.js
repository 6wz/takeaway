webpackJsonp([4],{Ovu4:function(t,a){},"b+3+":function(t,a){},nU8l:function(t,a,o){"use strict";Object.defineProperty(a,"__esModule",{value:!0});var e=o("Gu7T"),i=o.n(e),s=o("mvHQ"),d=o.n(s),r=o("woOf"),n=o.n(r),l=o("Dd8w"),c=o.n(l),g=o("NYxO"),h=o("mzkE"),u=o("Cz8s"),f=o("fgl9"),y=o("kEnp"),m=o("rniE"),p={data:function(){return{active:0,getLocationFail:!1,showPreLoading:!0,is_use_diy:0,diydata:{diy:{data:{}},storeExtra:{condition:{order:"",mode:"",dis:""},filter_title:"综合排序",multiple:!1,filter:!1},stores:{loading:!0,finished:!1,page:1,psize:20,loaded:0,empty:0,data:[]},popup:{storeSearch:!1,serviceQrcode:!1},superRedpacketData:{},config:{},guideData:{is_show:!1}},menufooter:{},order_remind:{},showFixedSearchBar:!1,goodsTabActive:0,goodsTabActiveReal:0,goodsTabFixed:0,goodsTabHeights:[],goodsTabOffsetTop:0,followHeight:0,scrollFromClickTab:!1,follow:{},failedTips:{type:"message",tips:"平台暂时关闭",btnText:"知道喽",link:"close"},mallClose:!1}},components:{PublicHeader:u.a,PublicFooter:h.a,diy:y.a,OrderStatusWarpper:m.a,follow:f.a},methods:c()({},Object(g.b)(["setLocation","getLocation"]),{onToggleDiscount:function(t,a){"waimai_stores"==this.diydata.diy.data.items[a].id?this.diydata.diy.data.items[a].data[t].activity.is_show_all=!this.diydata.diy.data.items[a].data[t].activity.is_show_all:this.diydata.stores.data[t].activity.is_show_all=!this.diydata.stores.data[t].activity.is_show_all},onCloseRedpacket:function(){this.diydata.superRedpacketData.is_show=!1,this.diydata.superRedpacketData=n()({},this.diydata.superRedpacketData)},onCloseGuide:function(){this.diydata.guideData.is_show=!1},onChangeStoreExtra:function(t){"multiple"==t?(this.diydata.storeExtra.multiple=!0,this.diydata.storeExtra.filter=!1):(this.diydata.storeExtra.multiple=!1,this.diydata.storeExtra.filter=!0),this.diydata.popup.storeSearch=!0},onStoreOrderby:function(t,a,o){if("order"==t)"svipRedpacket"==a?this.diydata.storeExtra.condition.dis=a:(this.diydata.storeExtra.condition.order=a,this.diydata.storeExtra.multiple=!1,this.diydata.storeExtra.filter_title="sailed"!=a&&"distance"!=a?o:"综合排序");else if("discounts"==t){if(this.diydata.storeExtra.condition.dis==a&&(a=""),this.diydata.storeExtra.condition.dis=a,"refresh"!=o)return!1}else{if("mode"==t)return this.diydata.storeExtra.condition.mode==a&&(a=""),this.diydata.storeExtra.condition.mode=a,!1;"clear"==t?(this.diydata.storeExtra.condition.dis="",this.diydata.storeExtra.condition.order="",this.diydata.storeExtra.condition.mode="",this.diydata.storeExtra.filter=!1,this.diydata.storeExtra.filter_title="综合排序"):"finish"==t&&(this.diydata.storeExtra.filter=!1)}this.diydata.popup.storeSearch=!1,this.onGetStore(!0)},onGetStore:function(t){var a=this,o=this;t&&(o.diydata.stores={page:1,psize:20,loaded:0,empty:!1,loading:!0}),o.diydata.stores.loading=!0,this.util.request({url:"wmall/home/index/store",data:{lat:o.locationInfo.location_x,lng:o.locationInfo.location_y,page:o.diydata.stores.page,psize:o.diydata.stores.psize,condition:d()(o.diydata.storeExtra.condition)}}).then(function(e){var s=e.data.message.message;t&&(o.diydata.stores.data=[]),o.diydata.stores.data=[].concat(i()(a.diydata.stores.data),i()(s.stores)),s.pagetotal<=o.diydata.stores.page&&(o.diydata.stores.loaded=1,o.diydata.stores.data.length||(o.diydata.stores.empty=!0),o.diydata.stores.finished=!0),o.diydata.stores.loading=!1,o.diydata.stores.page++,!o.diydata.stores.loaded&&s.stores.length<10&&a.onGetStore()})},onLoad:function(){var t=this,a=this;this.util.request({url:"wmall/home/index/index",data:{lat:this.locationInfo.location_x,lng:this.locationInfo.location_y,menufooter:1,order_remind:1,code:this.code||0}}).then(function(o){a.showPreLoading=!1;var e=o.data.message;if(e.errno)return-3e3==e.errno?(t.mallClose=!0,t.failedTips.tips=e.message,!1):void t.$toast(e.message);if(a.diydata.config=e.message.config,a.diydata.diy=e.message.diy,a.diy=e.message.diy,a.util.setWXTitle(a.diydata.diy.data.page.title),a.diydata.superRedpacketData=e.message.superRedpacketData,a.diydata.superRedpacketData.is_show=!0,a.code){var s=e.message.spread;0==s.errno?a.spreadInfo=s.message.nickname+"向您推荐了"+a.diydata.config.title+",快去下单吧!":a.spreadInfo=s.message,a.$toast(a.spreadInfo)}if(a.diydata.diy.guide)if(1==a.diydata.diy.guide.params.status&&"interval"==a.diydata.diy.guide.params.show_setting){var d=t.util.getStorage("guideStorage");(!d||d&&!d.show)&&(t.util.setStorage("guideStorage",{show:1},60*a.diydata.diy.guide.params.interval_time),a.diydata.guideData.is_show=!0)}else 1==a.diydata.diy.guide.params.status&&"everytime"==a.diydata.diy.guide.params.show_setting&&(t.util.removeStorage("guideStorage"),a.diydata.guideData.is_show=!0);var r=e.message.default_location;if(r&&r.location_x&&(t.getLocationFail=!1,a.setLocation(r)),1==t.util.getStorage("itime")&&e.message.stores.stores.length>10){var n=Math.floor(5*Math.random());e.message.stores.stores=e.message.stores.stores.slice(2,n)}a.diydata.stores.data=[].concat(i()(t.diydata.stores.data),i()(e.message.stores.stores)),e.message.stores.pagetotal<=a.diydata.stores.page&&(a.diydata.stores.loaded=1,a.diydata.stores.data.length||(a.diydata.stores.empty=!0),a.diydata.stores.finished=!0),a.diydata.stores.loading=!1,a.diydata.stores.page++,a.diydata.stores.loaded||e.message.stores.stores.length||a.onGetStore(),a.diydata.cart_sum=e.message.cart_sum,a.menufooter=window.menufooter,a.follow=window.follow,a.order_remind=window.order,1==a.diy.is_show_kefu&&a.util.imeiqia(),1==a.diy.is_has_goodsTab&&t.$nextTick(function(){t.onCalculateGoodsTabItemHeight()})})},onInit:function(){var t=this;this.getLocation(),this.locationInfo.location_x?(t.getLocationFail=!1,t.locationInfo.last_location_x=this.locationInfo.location_x,t.onLoad()):this.util.getLocation({successLocation:function(a){t.setLocation({location_x:a.location_x,location_y:a.location_y}),t.onLoad()},successAddress:function(a){t.setLocation({location_x:a.location_x,location_y:a.location_y,address:a.address})},fail:function(a){t.setLocation({last_location_x:0,location_x:0,address:"获取定位失败"}),t.getLocationFail=!0,t.onLoad()}})},onGetCartNums:function(){var t=this;this.util.request({url:"wmall/home/index/cart"}).then(function(a){var o=a.data.message;o.errno?t.util.$toast(o.message):t.diydata.cart_sum=o.message.cart_sum})},onToggleService:function(){this.diydata.popup.serviceQrcode=!this.diydata.popup.serviceQrcode},onChangeGoodsTabActive:function(t){this.goodsTabActiveReal=t.value},onChangeFollowStatus:function(t){t.status||(this.followHeight=0)},onCalculateGoodsTabItemHeight:function(){this.goodsTabOffsetTop=document.getElementsByClassName("goods-tab-inner")[0].offsetTop,this.goodsTabOffsetTop-=document.getElementsByClassName("van-tabs")[0].clientHeight-44,document.getElementById("follow")&&(this.followHeight=document.getElementsByClassName("follow-tips")[0].clientHeight,this.goodsTabOffsetTop-=this.followHeight);for(var t=document.getElementsByClassName("goods-tab-item"),a=this.goodsTabOffsetTop,o=[],e=0;e<t.length;e++){a+=t[e].clientHeight,o.push(a)}this.goodsTabHeights=o},onToggleGoodsTab:function(t){this.scrollFromClickTab=!0;var a=this.goodsTabOffsetTop-44;t.index>=1&&(a=this.goodsTabHeights[t.index-1]-44),a-=this.followHeight,this.diydata.diy.is_has_location&&a>100?(this.goodsTabFixed=2,a-=52):this.goodsTabFixed=1,window.scrollTo(0,a),this.goodsTabActive=t.index}}),created:function(){this.$route.query&&this.$route.query.code&&(this.code=this.$route.query.code)},activated:function(){if(this.locationInfo.last_location_x!=this.locationInfo.location_x)return this.diydata.stores={page:1,psize:20,loaded:0,empty:!1,loading:!0,data:[]},this.diydata.storeExtra={condition:{order:"",mode:"",dis:""},filter_title:"综合排序",multiple:!1,filter:!1},void this.onInit();this.onGetCartNums()},computed:c()({},Object(g.c)(["locationInfo"])),mounted:function(){var t=this;t.util.imap(),t.onInit(),window.addEventListener("scroll",function(){var a=window.pageYOffset||document.documentElement.scrollTop||document.body.scrollTop;if(t.showFixedSearchBar=a>100,1==t.diy.is_has_goodsTab){var o=44;if(t.diydata.diy.is_has_location&&t.showFixedSearchBar&&(o+=52),(a=Math.ceil(a+o))>=t.goodsTabOffsetTop?t.diydata.diy.is_has_location&&t.showFixedSearchBar?t.goodsTabFixed=2:t.goodsTabFixed=1:t.goodsTabFixed=0,!t.scrollFromClickTab)for(var e=t.goodsTabHeights,i=e.length,s=0;s<i;s++){if(!e[s+1]){t.goodsTabActive=s;break}if(a<e[s]){t.goodsTabActive=s;break}if(a>=e[s]&&a<e[s+1]){t.goodsTabActive=s+1;break}}}t.scrollFromClickTab=!1})}},_={render:function(){var t=this,a=t.$createElement,o=t._self._c||a;return o("div",{attrs:{id:"home"}},[o("div",{attrs:{id:"allmap"}}),t._v(" "),t.order_remind&&t.order_remind.log?o("order-status-warpper",{attrs:{order:t.order_remind}}):t._e(),t._v(" "),t.follow&&1==t.follow.status?o("follow",{attrs:{follow:t.follow},on:{changeStatus:t.onChangeFollowStatus}}):t._e(),t._v(" "),o("public-footer",{attrs:{menufooter:t.menufooter,showFailedTips:t.mallClose,failedTips:t.failedTips}}),t._v(" "),o("div",{staticClass:"container"},[o("diy",{attrs:{diydata:t.diydata,preLoading:t.showPreLoading,getLocationFail:t.getLocationFail,showFixedSearchBar:t.showFixedSearchBar,goodsTabActive:t.goodsTabActive,goodsTabFixed:t.goodsTabFixed},on:{onToggleDiscount:t.onToggleDiscount,onChangeStoreExtra:t.onChangeStoreExtra,onStoreOrderby:t.onStoreOrderby,onGetStore:t.onGetStore,onCloseRedpacket:t.onCloseRedpacket,onCloseGuide:t.onCloseGuide,onToggleService:t.onToggleService,onToggleGoodsTab:t.onToggleGoodsTab,onChangeGoodsTabActive:t.onChangeGoodsTabActive}})],1)],1)},staticRenderFns:[]};var v=o("VU/8")(p,_,!1,function(t){o("b+3+")},null,null);a.default=v.exports},rniE:function(t,a,o){"use strict";var e={props:{order:{type:Object,default:function(){return{order:{log:{title:""}}}}}},data:function(){return{active:!1}},methods:{onChangeActive:function(){this.active=!this.active}}},i={render:function(){var t=this,a=t.$createElement,o=t._self._c||a;return o("div",{attrs:{id:"order-status-warpper"}},[o("div",{staticClass:"order-status-warpper",class:{active:t.active},on:{click:t.onChangeActive}},[o("img",{attrs:{src:t.order.logo,alt:""}}),t._v(" "),o("div",{staticClass:"text"},[t.order.log&&t.order.log.title?o("div",{staticClass:"order-status"},[t._v(t._s(t.order.log.title))]):t._e(),t._v(" "),o("div",{staticClass:"time"},[t._v("请耐心等待")])]),t._v(" "),o("span",{staticClass:"order-status-close"},[t._v("×")])])])},staticRenderFns:[]};var s=o("VU/8")(e,i,!1,function(t){o("Ovu4")},null,null);a.a=s.exports}});