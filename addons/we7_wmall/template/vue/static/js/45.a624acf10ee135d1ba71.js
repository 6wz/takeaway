webpackJsonp([45],{"7LCE":function(e,t,s){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var a=s("Gu7T"),r=s.n(a),i=s("woOf"),d=s.n(i),n=s("Dd8w"),l=s.n(n),o=s("NYxO"),c=s("Cz8s"),u=s("+TmT"),m={data:function(){return{query:{},address:{address:"",store:{}},sexName:"先生",submiting:0,value:[],address_type:0,areas:[],columns:[{values:[],className:"column1",defaultIndex:0},{values:[],className:"column2",defaultIndex:0}],addressPopupStatus:!1,showPreLoading:!0}},components:{PublicHeader:c.a,Uploader:u.a},computed:l()({},Object(o.c)(["editAddress","erranderExtra"]),{orderCreateQuery:function(){var e=this.query;if(e){var t={};for(var s in e){["sid","is_pindan","pindan_id","is_buysvip"].indexOf(s)>=0&&(t[s]=e[s])}return t}return{}}}),methods:l()({},Object(o.b)(["replaceAddress","setOrderExtra","setState"]),{onToggleAddressPopupStatus:function(){this.addressPopupStatus=!this.addressPopupStatus},onChangePicker:function(e,t,s){0==s&&(t[0].child&&t[0].child.length>0?e.setColumnValues(1,t[0].child):e.setColumnValues(1,[]))},onConfirmAddress:function(e,t){var s=this;if(0!=e[1].status)this.address.address=e[0].title+e[1].title,this.address.location_x=e[1].location_x,this.address.location_y=e[1].location_y,this.address.area_id=e[1].id,this.address.area_parentid=e[0].id,this.onToggleAddressPopupStatus();else{var a="亲，您的地址【"+e[1].title+"】已超出【"+this.address.store.title+"】的配送范围了，请更换其他商家下单";this.$dialog.confirm({title:"温馨提示",message:a,confirmButtonText:"更换商家",cancelButtonText:"调整地址"}).then(function(){s.$router.replace(s.util.getUrl({path:"/pages/home/index"}))}).catch(function(){})}},onLoad:function(){var e=this,t=this;this.util.request({url:"wmall/member/address/post",data:{sid:this.sid,id:this.id}}).then(function(s){e.showPreLoading=!1;var a=s.data.message;if(a.errno&&e.util.$toast(a.message),e.address=a.message,"location"==e.from&&e.editAddress.address&&e.editAddress.lat&&e.editAddress.lng&&(e.address=d()(e.address,e.editAddress)),e.sexName=e.address.sex?e.address.sex:e.sexName,e.address_type=a.message.address_type,1==e.address_type&&a.message.areas&&a.message.areas.length>0){e.areas=[].concat(r()(a.message.areas)),e.columns[0].values=[].concat(r()(e.areas));var i=a.message.area_parent_index;e.columns[0].defaultIndex=i,e.areas[i].child&&e.areas[i].child.length>0&&(e.columns[1].values=[].concat(r()(e.areas[i].child)),e.columns[1].defaultIndex=a.message.area_index)}e.id||e.editAddress.address||1==e.address_type||e.util.getLocation({successLocation:function(e){},successAddress:function(e){t.address.address=e.address,t.address.location_x=e.location_x,t.address.location_y=e.location_y,t.address=d()({},t.address)},fail:function(e){}}),"location"==e.from&&e.replaceAddress({})})},onSubmit:function(){var e=this;if(1==this.submiting)return!1;if(!this.address.address)return this.$toast("收货地址不能为空"),!1;if(1==this.address_type&&!this.util.isNumber(this.address.number))return this.$toast("门牌号不能为空且只能是数字"),!1;if(!this.address.realname)return this.$toast("联系人不能为空"),!1;if(!this.address.mobile)return this.$toast("手机号不能为空"),!1;if(!this.util.isValidMobile(this.address.mobile))return this.$toast("手机号格式错误"),!1;this.submiting=1;var t={id:this.id,sid:this.sid,order_id:this.orderId,channel:this.channel,flag:1,sex:this.sexName,number:this.address.number,realname:this.address.realname,mobile:this.address.mobile,address:this.address.address,location_x:this.address.location_x||this.address.lat,location_y:this.address.location_y||this.address.lng,area_id:this.address.area_id,area_parentid:this.address.area_parentid};this.erranderExtra&&this.erranderExtra.agentid&&(t.agentid=this.erranderExtra.agentid),this.util.request({url:"wmall/member/address/post",data:t,method:"POST"}).then(function(s){e.submiting=0;var a=s.data.message;if(!e.channel||""==e.channel||"undefined"==e.channel)return a.errno?(e.$toast(a.message),!1):(e.replaceAddress({}),void e.util.$toast("保存地址成功",e.util.getUrl({path:"/pages/member/address"}),1500,"replace"));if("takeout"==e.channel)if(-1e3==a.errno)1==e.address_type?e.$dialog.confirm({title:"温馨提示",message:"亲，您的地址已超出商家的配送范围了，请更换商家下单",confirmButtonText:"更换商家",cancelButtonText:"调整地址"}).then(function(){e.$router.replace(e.util.getUrl({path:"/pages/home/index"}))}).catch(function(){}):e.$dialog.confirm({title:"温馨提示",message:a.message,confirmButtonText:"调整地址",cancelButtonText:"仍然保存"}).then(function(){}).catch(function(){t.force=1,e.util.request({method:"POST",url:"wmall/member/address/post",data:t}).then(function(t){e.orderId&&e.orderId>0?e.$router.replace(e.util.getUrl({path:"/pages/order/address",query:{id:e.orderId}})):(e.replaceAddress({}),e.setOrderExtra({key:"address_id",val:0}),e.$router.replace(e.util.getUrl({path:"/pages/order/create",query:e.orderCreateQuery})))})});else{if(a.errno)return e.$toast(a.message),!1;e.orderId&&e.orderId>0?e.$router.replace(e.util.getUrl({path:"/pages/order/address",query:{id:e.orderId}})):(e.setOrderExtra({key:"address_id",val:a.message}),e.$router.replace(e.util.getUrl({path:"/pages/order/create",query:e.orderCreateQuery})))}else if("errander"==e.channel){if(-1e3!=a.errno)return a.errno?(e.$toast(a.message),!1):("accept"==e.input?e.setState({type:"erranderExtra",key:"acceptaddress_id",val:a.message}):"buy"==e.input&&e.setState({type:"erranderExtra",key:"buyaddress_id",val:a.message}),e.$router.replace(e.util.getUrl({path:"/pages/paotui/diy",query:{id:e.erranderId}})),!1);e.$dialog.confirm({title:"温馨提示",message:"亲,您的地址已超出跑腿的服务范围了!",confirmButtonText:"调整地址",cancelButtonText:"仍然保存"}).then(function(){}).catch(function(){t.force=1,e.util.request({method:"POST",url:"wmall/member/address/post",data:t}).then(function(t){e.replaceAddress({}),"accept"==e.input?e.setState({type:"erranderExtra",key:"acceptaddress_id",val:0}):"buy"==e.input&&e.setState({type:"erranderExtra",key:"buyaddress_id",val:0}),e.$router.replace(e.util.getUrl({path:"/pages/paotui/diy",query:{id:e.erranderId}}))})})}})},onSelectSex:function(e){this.sexName=e},onDel:function(){var e=this;this.$dialog.confirm({title:"温馨提示",message:"删除后将不可恢复,确定删除吗?"}).then(function(){e.util.request({url:"wmall/member/address/del",data:{id:e.id}}).then(function(t){if(!t.data.message.errno){var s={};e.sid>0&&(s={sid:e.sid}),e.$router.replace(e.util.getUrl({path:"/pages/member/address",query:s}))}})})}}),created:function(){this.query=this.util.parseQuery(this.$route.query),this.query&&(this.id=this.query.id,this.sid=this.query.sid,this.channel=this.query.channel,this.input=this.query.input,this.erranderId=this.query.erranderId,this.from=this.query.from,this.orderId=this.query.orderId,this.sid>0&&(this.channel="takeout",this.query.channel="takeout"))},mounted:function(){this.onLoad()}},h={render:function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("div",{attrs:{id:"address-post"}},[s("public-header",{attrs:{title:"编辑地址"}}),e._v(" "),s("div",{staticClass:"content"},[s("div",{staticClass:"list"},[e.address_type?1==e.address_type?s("div",{staticClass:"list-item flex-lr van-hairline--bottom"},[s("div",{staticClass:"item-title ellipsis"},[e._v("选择地址")]),e._v(" "),s("div",{staticClass:"item-input flex-lr"},[s("div",{staticClass:"w-100 font-15"},[s("div",{staticClass:"flex-lr",on:{click:e.onToggleAddressPopupStatus}},[e.address.address?s("div",{staticStyle:{color:"#333"}},[e._v(e._s(e.address.address))]):s("span",{staticClass:"c-gray"},[e._v("点击选择地址(必填)")]),e._v(" "),s("i",{staticClass:"icon icon-right c-gray"})])])])]):e._e():s("div",{staticClass:"list-item flex-lr van-hairline--bottom"},[s("div",{staticClass:"item-title ellipsis"},[e._v("小区/大厦/学校")]),e._v(" "),s("div",{staticClass:"item-input flex-lr"},[s("i",{staticClass:"icon icon-location"}),e._v(" "),s("div",{staticClass:"location"},[s("div",{staticClass:"flex-lr",on:{click:function(t){return e.util.jsUrl("/pages/member/addressLocation",e.query,"replace")}}},[e.address.address?s("div",{staticStyle:{color:"#333"}},[e._v(e._s(e.address.address))]):s("span",[e._v("点击添加地址(必填)")]),e._v(" "),s("i",{staticClass:"icon icon-right"})])])])]),e._v(" "),s("div",{staticClass:"list-item flex-lr van-hairline--bottom"},[s("div",{staticClass:"item-title ellipsis"},[e._v("楼号-门牌号")]),e._v(" "),s("div",{staticClass:"item-input "},[s("input",{directives:[{name:"model",rawName:"v-model",value:e.address.number,expression:"address.number"}],attrs:{name:"number",type:"text",placeholder:"例:16号楼427室"},domProps:{value:e.address.number},on:{input:function(t){t.target.composing||e.$set(e.address,"number",t.target.value)}}})])]),e._v(" "),s("div",{staticClass:"list-item flex-lr van-hairline--bottom"},[s("div",{staticClass:"item-title ellipsis "},[e._v("联系人")]),e._v(" "),s("div",{staticClass:"item-input"},[s("div",{staticClass:"username van-hairline--bottom"},[s("input",{directives:[{name:"model",rawName:"v-model",value:e.address.realname,expression:"address.realname"}],attrs:{type:"text",name:"realname",placeholder:"您的姓名"},domProps:{value:e.address.realname},on:{input:function(t){t.target.composing||e.$set(e.address,"realname",t.target.value)}}})]),e._v(" "),s("div",{staticClass:"sex flex"},[s("div",{staticClass:"sex-item flex",on:{click:function(t){return e.onSelectSex("先生")}}},[s("i",{staticClass:"icon",class:{"icon-check":"先生"==e.sexName}}),e._v("先生\n\t\t\t\t\t\t")]),e._v(" "),s("div",{staticClass:"sex-item flex",on:{click:function(t){return e.onSelectSex("女士")}}},[s("i",{staticClass:"icon",class:{"icon-check":"女士"==e.sexName}}),e._v("女士\n\t\t\t\t\t\t")])])])]),e._v(" "),s("div",{staticClass:"list-item flex-lr van-hairline--bottom"},[s("div",{staticClass:"item-title ellipsis"},[e._v("手机号")]),e._v(" "),s("div",{staticClass:"item-input "},[s("input",{directives:[{name:"model",rawName:"v-model",value:e.address.mobile,expression:"address.mobile"}],attrs:{type:"number",name:"mobile",placeholder:"请填写收货手机号码"},domProps:{value:e.address.mobile},on:{input:function(t){t.target.composing||e.$set(e.address,"mobile",t.target.value)}}})])])]),e._v(" "),s("div",{staticClass:"save-btn",on:{click:e.onSubmit}},[s("van-button",{attrs:{type:"danger",size:"normal",block:!0}},[e._v("保存")])],1),e._v(" "),e.address&&e.address.id>0?s("div",{staticClass:"save-btn",on:{click:e.onDel}},[s("van-button",{attrs:{type:"default",size:"normal",block:!0}},[e._v("删除")])],1):e._e()]),e._v(" "),s("van-popup",{attrs:{position:"bottom"},model:{value:e.addressPopupStatus,callback:function(t){e.addressPopupStatus=t},expression:"addressPopupStatus"}},[s("van-picker",{attrs:{"show-toolbar":"",title:"选择地址","value-key":"title",columns:e.columns},on:{cancel:e.onToggleAddressPopupStatus,confirm:e.onConfirmAddress,change:e.onChangePicker}})],1),e._v(" "),e.showPreLoading?s("iloading"):e._e()],1)},staticRenderFns:[]};var p=s("VU/8")(m,h,!1,function(e){s("dg76")},null,null);t.default=p.exports},dg76:function(e,t){}});