webpackJsonp([97],{HKKt:function(e,t){},h8Yo:function(e,t,s){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var a=s("Dd8w"),r=s.n(a),n=s("Gu7T"),o=s.n(n),c=s("NYxO"),i={data:function(){return{addresses:[],showSearch:!1,key:"",searchAddress:[],addressSearchHistory:[],getNowLocationing:!1}},components:{PublicHeader:s("Cz8s").a},watch:{key:function(){var e=this,t=this.key;this.showSearch=!!t,this.searchAddress=[],t&&this.util.request({url:"system/common/map/suggestion",data:{key:t}}).then(function(t){var s=t.data.message;s.errno||(e.searchAddress=[].concat(o()(e.searchAddress),o()(s.message)))})}},methods:r()({},Object(c.b)(["setState"]),{onLoad:function(){var e=this.util.getStorage("erranderAddressSearchHistory");e&&e.length&&e.length>0&&(this.addressSearchHistory=[].concat(o()(this.addressSearchHistory),o()(e)))},chooseLocation:function(e){var t=arguments.length>1&&void 0!==arguments[1]&&arguments[1],s={address:e.address,location_x:e.location_x,location_y:e.location_y};this.setState({type:"erranderExtra",key:"buyaddress",val:s}),t&&(s.name=e.name,this.addressSearchHistory.push(s),this.util.setStorage("erranderAddressSearchHistory",this.addressSearchHistory)),this.$router.go(-1)}}),computed:r()({},Object(c.c)(["erranderExtra"])),mounted:function(){this.onLoad()}},d={render:function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("div",{attrs:{id:"home-location"}},[s("public-header",{attrs:{title:"选择购买地址"}}),e._v(" "),s("div",{staticClass:"content"},[s("div",{staticClass:"search-header-wrap van-hairline--bottom"},[s("div",{staticClass:"search-header"},[s("van-search",{attrs:{"show-action":"",background:"#fff",placeholder:"请输入您的购买地址"},model:{value:e.key,callback:function(t){e.key=t},expression:"key"}},[s("div",{attrs:{slot:"action"},slot:"action"},[e._v("搜索")])])],1)]),e._v(" "),e.showSearch?s("van-cell-group",e._l(e.searchAddress,function(t,a){return s("van-cell",{key:a,attrs:{title:t.address,label:t.name},on:{click:function(s){return e.chooseLocation(t,!0)}}})}),1):[e.addressSearchHistory.length&&e.addressSearchHistory.length>0?[s("div",{staticClass:"item-title"},[s("van-icon",{attrs:{name:"location"}}),e._v("搜索历史\n\t\t\t\t")],1),e._v(" "),s("van-cell-group",e._l(e.addressSearchHistory,function(t,a){return s("van-cell",{key:a,attrs:{title:t.address,label:t.name},on:{click:function(s){return e.chooseLocation(t)}}})}),1)]:e._e()]],2)],1)},staticRenderFns:[]};var l=s("VU/8")(i,d,!1,function(e){s("HKKt")},null,null);t.default=l.exports}});