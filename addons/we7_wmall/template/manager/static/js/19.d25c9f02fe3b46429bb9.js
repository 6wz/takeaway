webpackJsonp([19],{TZBu:function(t,e,i){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var a=i("mvHQ"),n=i.n(a),s=i("Cz8s"),o=i("deIj"),c={components:{publicHeader:s.a},data:function(){return{showPreLoading:!0,islegal:!1,page_title:"",discount_title:"",discount_cn:"",filter:{items:{type:""}},datePicker:{type:"",maxDate:new Date(2050,12),currentDate:new Date,status:!1,start:"",end:""},options:[{condition:0,back:0},{condition:0,back:0},{condition:0,back:0},{condition:0,back:0}]}},methods:{onLoad:function(){var t=this;Object(o.a)({vue:t,url:"manage/activity/index/activity_other",data:{filter:this.filter.items},success:function(e){t.islegal=!0,t.page_title=e.page_title,t.discount_title=e.discount_title,t.discount_cn=e.discount_cn;var i=t.util.formatDate(t.datePicker.currentDate);t.datePicker.start=t.datePicker.end=i},fail:function(e){var i="";-1e3==e.errno&&(i=t.util.getUrl({path:"pages/activity/index"})),t.util.$toast(e.message,i,1e3)}})},onToggleDatePicker:function(t){this.datePicker.status=!this.datePicker.status,t&&(this.datePicker.type=t)},onConfirmTime:function(t){var e=this.util.formatDate(t);this.datePicker[this.datePicker.type]=e,this.onToggleDatePicker()},onSubmit:function(){if(!this.filter.items.type)return this.util.$toast("请先选择活动类型"),!1;Object(o.c)({vue:this,url:"manage/activity/index/activity_other",data:{type:this.filter.items.type,params:n()({starttime:this.datePicker.start,endtime:this.datePicker.end,options:this.options})},redirect:this.util.getUrl({path:"pages/activity/index"})})}},mounted:function(){this.onLoad()},created:function(){this.query=this.$route.query,this.query&&this.query.type&&(this.filter.items.type=this.query.type)}},r={render:function(){var t=this,e=t.$createElement,i=t._self._c||e;return i("div",{attrs:{id:"activity-delivery-fee"}},[i("public-header",{attrs:{title:t.page_title}}),t._v(" "),i("div",{staticClass:"content"},[i("van-cell-group",{staticClass:"margin-10-t"},[i("van-cell",[i("div",{attrs:{slot:"title"},slot:"title"},[t._v("开始时间")]),t._v(" "),i("div",{staticClass:"c-gray",attrs:{slot:"right-icon"},on:{click:function(e){t.onToggleDatePicker("start")}},slot:"right-icon"},[t._v("\n\t\t\t\t\t"+t._s(this.datePicker.start?this.datePicker.start:"点击选择")+"\n\t\t\t\t\t"),i("van-icon",{attrs:{name:"arrow"}})],1)]),t._v(" "),i("van-cell",[i("div",{attrs:{slot:"title"},slot:"title"},[t._v("结束时间")]),t._v(" "),i("div",{staticClass:"c-gray",attrs:{slot:"right-icon"},on:{click:function(e){t.onToggleDatePicker("end")}},slot:"right-icon"},[t._v("\n\t\t\t\t\t"+t._s(this.datePicker.end?this.datePicker.end:"点击选择")+"\n\t\t\t\t\t"),i("van-icon",{attrs:{name:"arrow"}})],1)])],1),t._v(" "),i("div",{staticClass:"activity-box margin-10-t"},["newMember"==t.filter.items.type?[i("div",{staticClass:"activity-col"},[i("span",[t._v("门店新客立减")]),t._v(" "),i("div",{staticClass:"input-box"},[i("input",{directives:[{name:"model",rawName:"v-model",value:t.options[0].back,expression:"options[0].back"}],domProps:{value:t.options[0].back},on:{input:function(e){e.target.composing||t.$set(t.options[0],"back",e.target.value)}}})]),t._v(" "),i("span",[t._v("元")])])]:t._l(4,function(e,a){return i("div",{staticClass:"activity-col"},[i("span",[t._v("满")]),t._v(" "),i("div",{staticClass:"input-box"},[i("input",{directives:[{name:"model",rawName:"v-model",value:t.options[a].condition,expression:"options[index].condition"}],domProps:{value:t.options[a].condition},on:{input:function(e){e.target.composing||t.$set(t.options[a],"condition",e.target.value)}}})]),t._v(" "),i("span",[t._v(t._s(t.discount_title))]),t._v(" "),i("div",{staticClass:"input-box"},[i("input",{directives:[{name:"model",rawName:"v-model",value:t.options[a].back,expression:"options[index].back"}],domProps:{value:t.options[a].back},on:{input:function(e){e.target.composing||t.$set(t.options[a],"back",e.target.value)}}})]),t._v(" "),i("span",[t._v(t._s(t.discount_cn))])])})],2),t._v(" "),i("div",{staticClass:"padding-15"},[i("van-button",{staticClass:"font-16 bg-info",attrs:{size:"normal",disabled:!t.islegal,block:""},on:{click:t.onSubmit}},[t._v("确认并保存")])],1)],1),t._v(" "),t.showPreLoading?i("iloading"):t._e(),t._v(" "),i("van-popup",{staticClass:"popup-time",attrs:{position:"bottom"},model:{value:t.datePicker.status,callback:function(e){t.$set(t.datePicker,"status",e)},expression:"datePicker.status"}},[i("van-datetime-picker",{attrs:{type:"datetime","min-data":t.datePicker.currentDate,"max-date":t.datePicker.maxDate},on:{confirm:t.onConfirmTime,cancel:t.onToggleDatePicker},model:{value:t.datePicker.currentDate,callback:function(e){t.$set(t.datePicker,"currentDate",e)},expression:"datePicker.currentDate"}})],1)],1)},staticRenderFns:[]};var l=i("VU/8")(c,r,!1,function(t){i("sIZA")},null,null);e.default=l.exports},sIZA:function(t,e){}});
//# sourceMappingURL=19.d25c9f02fe3b46429bb9.js.map