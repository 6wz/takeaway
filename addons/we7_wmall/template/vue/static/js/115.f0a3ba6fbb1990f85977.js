webpackJsonp([115],{EFBs:function(e,t){},dP5B:function(e,t,a){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var r={components:{PublicHeader:a("Cz8s").a},data:function(){return{showPreLoading:!0,detail:{}}},methods:{onLoad:function(){var e=this;this.util.request({url:"spread/order/detail",data:{order_type:this.order_type,id:this.id}}).then(function(t){e.showPreLoading=!1;var a=t.data.message;e.detail=a.message})}},created:function(){this.$route.query.id&&(this.id=this.$route.query.id),this.order_type="takeout",this.$route.query.order_type&&(this.order_type=this.$route.query.order_type)},mounted:function(){this.onLoad()}},i={render:function(){var e=this,t=e.$createElement,a=e._self._c||t;return a("div",{attrs:{id:"spreadOrderDetail"}},[a("public-header",{attrs:{title:"推广订单详情"}}),e._v(" "),a("div",{staticClass:"content"},[a("van-cell-group",[a("van-cell",{attrs:{title:"订单号",value:e.detail.ordersn}}),e._v(" "),a("van-cell",{attrs:{title:"下单人",value:e.detail.username}}),e._v(" "),a("van-cell",{attrs:{title:"佣金",value:"￥"+e.detail.commission}}),e._v(" "),a("van-cell",{attrs:{title:"结算状态",value:1==e.detail.spreadbalance?"已结算":"未结算"}}),e._v(" "),a("van-cell",{attrs:{title:"订单状态",value:e.detail.status_cn}})],1)],1),e._v(" "),e.showPreLoading?a("iloading"):e._e()],1)},staticRenderFns:[]};var s=a("VU/8")(r,i,!1,function(e){a("EFBs")},null,null);t.default=s.exports}});