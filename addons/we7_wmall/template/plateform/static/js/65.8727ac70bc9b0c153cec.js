webpackJsonp([65],{b3gd:function(t,a,e){"use strict";Object.defineProperty(a,"__esModule",{value:!0});var s=e("Gu7T"),i=e.n(s),r=e("Cz8s"),c=e("deIj"),d={data:function(){return{showPreLoading:!0,id:0,records:{type:"",data:[]}}},components:{publicHeader:r.a},methods:{onLoad:function(){var t=this;Object(c.a)({vue:this,data:{id:t.id},url:"plateform/mealRedpacket/list",success:function(a){t.records.data=[].concat(i()(t.records.data),i()(a.records.data.meal.data)),t.records.type=a.records.type}})}},created:function(){this.$route.query&&this.$route.query.id>0&&(this.id=parseInt(this.$route.query.id))},mounted:function(){this.onLoad()}},n={render:function(){var t=this,a=t.$createElement,e=t._self._c||a;return e("div",{attrs:{id:"mealRedpacket-list"}},[e("public-header",{attrs:{title:"红包列表"}}),t._v(" "),e("div",{staticClass:"content"},[t.records.data.length>0?e("div",{staticClass:"redpacket-list"},t._l(t.records.data,function(a,s){return e("div",{staticClass:"redpacket-item margin-10-b"},[e("div",{staticClass:"redpacket-container"},[e("div",{staticClass:"flex-lr c-danger"},[e("div",[t._v(t._s(a.name))]),t._v(" "),e("div",{staticClass:"price"},[e("span",{staticClass:"font-16"},[t._v("￥")]),t._v(t._s(a.discount)+".00")])]),t._v(" "),e("div",{staticClass:"flex-lr redPacket-use-limit"},[e("div",{staticClass:"flex"},["exchangeRedpacket"==t.records.type?e("div",{staticClass:"itag itag-danger"},[t._v("套餐红包")]):"mealRedpacket"==t.records.type?e("div",{staticClass:"itag itag-danger"},[t._v("套餐红包Plus")]):t._e(),t._v(" "),e("div",{staticClass:"c-gray font-12"},[t._v("有效期"+t._s(a.use_days_limit)+"天")])]),t._v(" "),e("div",{staticClass:"c-gray font-12"},[t._v("满"+t._s(a.condition)+".00元可用")])])]),t._v(" "),e("span",{staticClass:"border-1px-r circle circle-left"}),t._v(" "),e("span",{staticClass:"border-1px-l circle circle-right"})])})):e("div",{staticClass:"no-data"},[e("img",{attrs:{src:"static/img/order_no_con.png",alt:""}}),t._v(" "),e("p",[t._v("没有符合条件的数据!")])])]),t._v(" "),t.showPreLoading?e("iloading"):t._e()],1)},staticRenderFns:[]};var o=e("VU/8")(d,n,!1,function(t){e("nohk")},null,null);a.default=o.exports},nohk:function(t,a){}});