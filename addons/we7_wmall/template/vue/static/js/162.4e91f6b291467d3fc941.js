webpackJsonp([162],{Pdzc:function(s,t,i){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var a=i("Cz8s"),e=i("deIj"),o={components:{publicHeader:a.a},data:function(){return{isRefresh:!1,records:{page:1,psize:10,loading:!1,finished:!1,empty:!1,data:[]},showPreLoading:!0}},methods:{onLoad:function(s){Object(e.b)({vue:this,force:s,url:"svip/goods/index",recordsName:"goods"})},onPullDownRefresh:function(){this.onLoad(!0)}},mounted:function(){this.onLoad()}},n={render:function(){var s=this,t=s.$createElement,i=s._self._c||t;return i("div",{attrs:{id:"svip-enjoy"}},[i("public-header",{attrs:{title:"会员专享"}}),s._v(" "),i("div",{staticClass:"content"},[s._m(0),s._v(" "),i("van-pull-refresh",{on:{refresh:function(t){return s.onPullDownRefresh()}},model:{value:s.isRefresh,callback:function(t){s.isRefresh=t},expression:"isRefresh"}},[s.records.empty?i("div",{staticClass:"no-data"},[i("img",{attrs:{src:"static/img/goods_no_con.png",alt:""}}),s._v(" "),i("p",[s._v("暂无会员特属商品!")])]):i("van-list",{staticClass:"goods-list",attrs:{finished:s.records.finished,offset:100,"immediate-check":!1},on:{load:s.onLoad},model:{value:s.records.loading,callback:function(t){s.$set(s.records,"loading",t)},expression:"records.loading"}},[s._l(s.records.data,function(t){return i("router-link",{key:t.id,staticClass:"goods-item",attrs:{tag:"div",to:s.util.getUrl({path:"pages/store/goodsDetail",query:{sid:t.sid,id:t.id}})}},[i("div",{staticClass:"goods-img"},[i("img",{staticClass:"img-100",attrs:{src:t.thumb,alt:""}})]),s._v(" "),i("div",{staticClass:"goods-info"},[i("div",{staticClass:"goods-title ellipsis"},[s._v(s._s(t.title))]),s._v(" "),i("div",{staticClass:"flex"},[i("div",{staticClass:"discount"},[i("i",{staticClass:"icon icon-crownfill font-12"}),s._v("\n\t\t\t\t\t\t\t\t"+s._s(t.svip_discount)+"折\n\t\t\t\t\t\t\t")]),s._v(" "),i("div",{staticClass:"font-12 c-gray padding-5-l"},[s._v("月售"+s._s(t.sailed)+"份")])]),s._v(" "),i("div",{staticClass:"padding-5-t"},[i("span",{staticClass:"c-danger"},[i("span",{staticClass:"font-12"},[s._v("¥")]),s._v(" "),i("span",{staticClass:"font-20"},[s._v(s._s(t.svip_price))])]),s._v(" "),i("span",{staticClass:"font-12 c-gray line-through"},[s._v("¥"+s._s(t.price))])]),s._v(" "),i("div",{staticClass:"buy-btn"})]),s._v(" "),i("div",{staticClass:"goods-footer flex-lr"},[i("div",{staticClass:"flex c-gray font-12"},[i("i",{staticClass:"icon icon-store"}),s._v(" "),i("span",{staticClass:"padding-5-l"},[s._v(s._s(t.store_title))])]),s._v(" "),i("div",{staticClass:"font-12 c-gray"},[s._v(s._s(t.store_score)+"分")])])])}),s._v(" "),s.records.finished?i("div",{staticClass:"loaded"},[i("div",{staticClass:"loaded-tips"},[s._v("已经到底了")])]):s._e()],2)],1)],1),s._v(" "),s.showPreLoading?i("iloading"):s._e()],1)},staticRenderFns:[function(){var s=this.$createElement,t=this._self._c||s;return t("div",{staticClass:"title-img"},[t("img",{staticClass:"img-100",attrs:{src:"https://shadow.elemecdn.com/faas/h5/static/banner.c89d59b.png",alt:""}})])}]};var d=i("VU/8")(o,n,!1,function(s){i("sS1q")},null,null);t.default=d.exports},sS1q:function(s,t){}});
//# sourceMappingURL=162.4e91f6b291467d3fc941.js.map