webpackJsonp([188],{VZ3d:function(t,e,a){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var n=a("Dd8w"),i=a.n(n),o=a("Cz8s"),s=a("mzkE"),r=a("kEnp"),d=a("NYxO"),u=a("5ryX"),g={data:function(){return{showPreLoading:!0,is_grant:0,title:"",active:1,diydata:{diy:{data:{}}},gconfig:{mall:{}},store:{},menu:{css:{},params:{},data:{},position:{left:"inherit",bottom:"80px",right:"15px"}}}},components:{PublicHeader:o.a,PublicFooter:s.a,diy:r.a,navigator:u.a},methods:i()({},Object(d.b)(["setLocation","getLocation"]),{onLoad:function(){var t=this;this.util.request({url:"wmall/store/home/index",data:{sid:this.sid||3,gconfig:1}}).then(function(e){t.showPreLoading=!1,t.gconfig=window.gconfig;var a=e.data.message;a.errno?t.$toast(a.message):(t.diydata.diy.data=a.message.homepage,t.title=t.diydata.diy.data.page.title||"门店首页",t.util.setWXTitle(t.title),t.store=a.message.store,t.store.menu&&t.store.menu.data&&(t.menu=t.util.extend(t.menu,t.store.menu.data)))})},onChangeTab:function(t,e){},getCoupon:function(){var t=this;this.util.request({url:"wmall/channel/coupon/get",data:{sid:this.sid}}).then(function(e){var a=e.data.message;0==a.errno?(t.util.$toast(a.message,"",1e3),t.is_grant=1):t.util.$toast("领取失败","",1e3)})}}),created:function(){this.query=this.$route.query,this.query&&(this.sid=this.query.sid)},mounted:function(){this.onLoad()}},c={render:function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{attrs:{id:"store-home"}},[a("public-header",{attrs:{title:t.title}}),t._v(" "),t.gconfig&&2==t.gconfig.mall.version?a("public-footer",{attrs:{preLoading:t.showPreLoading,menufooter:t.menufooter}}):t._e(),t._v(" "),a("div",{staticClass:"content"},[a("diy",{attrs:{diydata:t.diydata,active:t.active,is_grant:t.is_grant,preLoading:t.showPreLoading},on:{onChangeTab:t.onChangeTab,getCoupon:t.getCoupon}})],1),t._v(" "),t.store.menu&&t.store.menu.path&&1==t.store.menu.path.home?[a("navigator",{attrs:{menu:t.menu}})]:t._e()],2)},staticRenderFns:[]};var l=a("VU/8")(g,c,!1,function(t){a("sgGN")},null,null);e.default=l.exports},sgGN:function(t,e){}});