webpackJsonp([56],{GfYn:function(t,e,s){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var o=s("Cz8s"),a=s("deIj"),l={data:function(){return{showPreLoading:!0,store:{}}},components:{publicHeader:o.a},methods:{onLoad:function(){var t=this;Object(a.a)({url:"manage/shop/index/info",vue:t,success:function(e){t.store=e.store}})}},created:function(){},mounted:function(){this.onLoad()}},r={render:function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{attrs:{id:"store-basic"}},[s("public-header",{attrs:{title:"基本信息"}}),t._v(" "),t.store?s("div",{staticClass:"content"},[s("van-cell-group",[s("van-cell",{attrs:{title:"门店名称",value:t.store.title?t.store.title:"未设置","is-link":"",to:t.util.getUrl({path:"/pages/shop/update",query:{type:"title"}})}}),t._v(" "),s("van-cell",{staticClass:"store-logo flex-lr",attrs:{title:"门店Logo",to:t.util.getUrl({path:"/pages/shop/update",query:{type:"logo"}})}},[s("div",{staticClass:"flex ",attrs:{slot:"right-icon"},slot:"right-icon"},[t.store.logo?s("img",{attrs:{src:t.store.logo,alt:""}}):s("span",[t._v("未设置")]),t._v(" "),s("van-icon",{attrs:{name:"arrow"}})],1)]),t._v(" "),s("van-cell",{attrs:{title:"门店描述",value:t.store.content?t.store.content:"未设置","is-link":"",to:t.util.getUrl({path:"/pages/shop/update",query:{type:"content"}})}}),t._v(" "),s("van-cell",{attrs:{title:"所属分类",value:t.store.category?t.store.category:"未设置","is-link":""},on:{click:function(e){t.util.$toast("您无法修改此项，如需更换门店分类，请联系平台管理员")}}}),t._v(" "),s("van-cell",{attrs:{title:"营业时间",value:t.store.business_hours&&t.store.business_hours.length>0?t.store.business_hours_cn:"未设置","is-link":"",to:t.util.getUrl({path:"/pages/shop/update",query:{type:"business_hours"}})}})],1),t._v(" "),s("van-cell-group",{staticClass:"margin-10-t"},[s("van-cell",{attrs:{title:"联系电话",value:t.store.telephone?t.store.telephone:"未设置","is-link":"",to:t.util.getUrl({path:"/pages/shop/update",query:{type:"telephone"}})}}),t._v(" "),s("van-cell",{attrs:{title:"详细地址",value:t.store.address?t.store.address:"未设置","is-link":"",to:t.util.getUrl({path:"/pages/shop/update",query:{type:"address"}})}}),t._v(" "),s("van-cell",{attrs:{title:"门店实景",value:t.store.thumbs&&t.store.thumbs.length>0?"已上传"+t.store.thumbs.length+"张":"待上传","is-link":"",to:t.util.getUrl({path:"/pages/shop/update",query:{type:"thumbs"}})}})],1)],1):t._e(),t._v(" "),t.showPreLoading?s("iloading"):t._e()],1)},staticRenderFns:[]};var n=s("VU/8")(l,r,!1,function(t){s("r0R9")},null,null);e.default=n.exports},r0R9:function(t,e){}});
//# sourceMappingURL=56.053df08457b25d9efeee.js.map