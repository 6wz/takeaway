webpackJsonp([100],{"9GtK":function(t,e){},A1rZ:function(t,e,s){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var i=s("Cz8s"),r=s("mzkE"),o=s("deIj"),a={data:function(){return{showPreLoading:!0,keyword:"",searchHistory:[],categorys:[]}},components:{PublicHeader:i.a,PublicFooter:r.a},methods:{onLoad:function(){var t=this;t.searchHistory=t.util.getStorage("isearchHistory.tongcheng"),t.searchHistory||(t.searchHistory=[]),Object(o.a)({vue:t,url:"tongcheng/index/get_search",data:{},success:function(e){t.categorys=e.categorys}})},onGetSearch:function(){if(""==this.keyword)return this.util.$toast("请输入搜索条件"),!1;this.searchHistory.push(this.keyword),this.util.setStorage("isearchHistory.tongcheng",this.searchHistory),this.$router.push(this.util.getUrl({path:"/gohome/pages/tongcheng/searchResult",query:{id:this.id,keyword:this.keyword}}))},onDeleteHistory:function(){var t=this;this.$dialog.confirm({message:"确定清除历史记录吗"}).then(function(e){"confirm"==e&&(t.util.removeStorage("isearchHistory.tongcheng"),t.searchHistory=[])})},onSelectHistory:function(t){this.keyword=this.keyword+t},onGoHot:function(t,e){0==t?t=e:e=0,this.$router.push(this.util.getUrl({path:"/gohome/pages/tongcheng/searchResult",query:{id:this.id,keyword:this.keyword}}))}},created:function(){this.$route.query&&(this.id=this.$route.query.id)},mounted:function(){this.onLoad()}},n={render:function(){var t=this,e=t.$createElement,s=t._self._c||e;return s("div",{attrs:{id:"tongcheng-search"}},[s("public-header",{attrs:{title:"搜索"}}),t._v(" "),s("div",{staticClass:"content"},[s("div",{staticClass:"search-header van-hairline--bottom"},[s("div",{staticClass:"search-content"},[s("van-icon",{attrs:{name:"search"}}),t._v(" "),s("input",{directives:[{name:"model",rawName:"v-model",value:t.keyword,expression:"keyword"}],staticClass:"search-input",attrs:{type:"text",placeholder:"请输入信息内容"},domProps:{value:t.keyword},on:{input:function(e){e.target.composing||(t.keyword=e.target.value)}}})],1),t._v(" "),s("div",{staticClass:"search-btn",on:{click:t.onGetSearch}},[t._v("搜索")])]),t._v(" "),s("div",{staticClass:"rmd-history"},[t.categorys&&t.categorys.length>0?s("div",{staticClass:"search-rmd-wrap"},[t._m(0),t._v(" "),s("div",{staticClass:"search-rmd"},t._l(t.categorys,function(e,i){return s("router-link",{key:i,attrs:{to:t.util.getUrl({path:"/gohome/pages/tongcheng/category",query:{id:0==e.parentid?e.id:e.parentid,childid:0==e.parentid?0:e.id}}),tag:"div"}},[t._v(t._s(e.title))])}),1)]):t._e(),t._v(" "),t.searchHistory&&t.searchHistory.length>0?s("div",{staticClass:"search-history-wrap"},[s("div",{staticClass:"search-rmd-title"},[s("div",{staticClass:"van-hairline--bottom"},[t._v("历史搜索")]),t._v(" "),s("div",{staticClass:"icon icon-delete",on:{click:t.onDeleteHistory}})]),t._v(" "),s("div",{staticClass:"search-rmd"},t._l(t.searchHistory,function(e,i){return s("div",{key:i,on:{click:function(s){return t.onSelectHistory(e)}}},[t._v(t._s(e))])}),0)]):t._e()]),t._v(" "),t._e()],1),t._v(" "),t.showPreLoading?s("iloading"):t._e()],1)},staticRenderFns:[function(){var t=this.$createElement,e=this._self._c||t;return e("div",{staticClass:"search-rmd-title "},[e("div",{staticClass:"van-hairline--bottom"},[this._v("热门搜索")])])}]};var c=s("VU/8")(a,n,!1,function(t){s("9GtK")},null,null);e.default=c.exports}});