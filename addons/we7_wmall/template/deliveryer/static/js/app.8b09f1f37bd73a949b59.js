webpackJsonp([33],{"+66b":function(e,t){},"4ml/":function(e,t){},EuEE:function(e,t,n){"use strict";var a=n("//Fk"),i=n.n(a),o=n("pFYg"),r=n.n(o),s=n("mvHQ"),c=n.n(s),l=n("woOf"),u=n.n(l),p="",d=window.location.pathname,f=d.indexOf("/addons/"),m=d.substring(0,f),g=window.location.protocol+"//"+window.location.host+m;p=g+"/app/wxapp.php",console.log(p),window.siteRoot=g;var h=n("fxnj"),v=n.n(h),y=n("Yn4R"),w=n("YaEn"),b=n("mtWM"),_=n.n(b),x=n("mw3O"),k=n.n(x),S=n("Fd2+"),P=n("IljC"),C=n.n(P),A=n("Yo4o"),O=n("XbGN"),j=(n("xrTZ").Base64,{setWXTitle:function(e){document.title=e;var t=navigator.userAgent.toLowerCase();if(/iphone|ipad|ipod/.test(t)){var n=document.createElement("iframe");n.style.display="none",n.setAttribute("src","/favicon.ico");n.addEventListener("load",function e(){setTimeout(function(){n.removeEventListener("load",e),document.body.removeChild(n)},0)}),document.body.appendChild(n)}},icloudapi:function(e){O.a.init(e)},scanQRCode:function(){var e=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{};O.a.scanQRCode(e)},startLocation:function(){arguments.length>0&&void 0!==arguments[0]&&arguments[0];var e=api.require("aMapLBS");e.stopUpdatingLocation(),e.configManager({accuracy:"hundredMeters",filter:1},function(t,n){if(t.status){var a=0;e.startLocation(function(e,t){if(e.status){if(++a%7==0){var n=j.getStorage("locationInfoArr");n||(n=[]);var i={location_x:e.lat,location_y:e.lon,addtime:Date.parse(new Date)/1e3,addtime_cn:j.formatDate(new Date)};n.push(i),j.setStorage("locationInfoArr",n),j.request({url:"delivery/member/set/location",data:{location_x:e.lat,location_y:e.lon,from:"vue"}}).then(function(e){e.data.message})}}else e.msg&&j.slog("locationerror","配送员定位失败","",e.msg);t&&t.msg&&j.slog("locationerror","配送员定位失败","",e.msg)})}})},slog:function(e,t,n,a){return!(!e||!a)&&(j.request({url:"delivery/member/set/slog",data:{type:e,title:t,message:a}}),!0)},imap:function(){return!0},imeiqia:function(){var e=document.createElement("script");e.type="text/javascript",e.src=j.getFullUrl("system/common/js/meiqia"),document.head.appendChild(e)},isMenuActive:function(e){return!!e&&-1!=window.location.href.indexOf(e)},jsPreviewImage:function(e,t){"string"==typeof e&&(e=[e]);var n=0;t>=0&&(n=t),j.isWeixin()?v.a.previewImage({current:e[n],urls:e}):Object(S.b)(e,n)},jsLocation:function(e){e.type||(e.type="wap");var t=parseFloat(e.lat),n=parseFloat(e.lng);if(!t||!n)return j.$toast("请先设置地址经纬度"),!1;if("wap"==e.type){var a={latitude:t,longitude:n};if(e.scale&&(a.scale=e.scale),e.name&&(a.name=e.name),e.address&&(a.address=e.address),j.isWeixin())v.a.openLocation(a);else{var i={q:a.latitude+","+a.longitude,name:a.name,address:a.address};window.location.href="http://m.amap.com/?"+j.toQueryString(i)}}else{var o={sourceApplication:api.appName,t:3,rideType:"elebike",dev:0};a={dlat:t,dlon:n,dname:e.name||e.address},a=u()(a,o);a=j.toQueryString(a),api.openApp({androidPkg:"android.intent.action.VIEW",uri:"amapuri://route/plan/?"+a,iosUrl:"iosamap://path?"+a},function(e,t){t&&(t&&"未找到可执行的应用"==t.msg?alert("请先安装高德地图软件"):alert(c()(t)))})}},jsTel:function(e){console.log("tel:"+e),window.location.href="tel:"+e},jsUrl:function(e){if(e)if("close"!=e)if(0!=e.indexOf("https://")&&0!=e.indexOf("http://")){var t=e.split(":");if(console.log(t),1==t.length){var n=j.getUrlParam(e,"i");return-1==e.indexOf("/pages")&&(e="/"+e),n||(e=j.getUrl({path:e})),void w.a.push(e)}"webview"==t[0]?window.location.href=e.substring(8):"tel"==t[0]?window.location.href=e:"wx"==t[0]&&"scanCode"==t[1]&&v.a.scanQRCode()}else window.location.href=e;else j.isWeixin()&&v.a.closeWindow()},pay:function(e){if(e.pay_type||(e.pay_type="wechat"),!e.order_type)return!1;if(!e.order_id)return!1;if("alipay"==e.pay_type&&j.isWeixin())return e.vue="",void w.a.push(j.getUrl({path:"/pages/public/aliPay",query:e}));var t={pay_type:e.pay_type,order_type:e.order_type,id:e.order_id};j.request({url:"system/paycenter/pay",data:t,showLoading:!0}).then(function(n){n=n.data.message;if(console.log(n),n.errno)return j.$toast(n.message),e.vue.submitDisabled=!1,!1;if("peerpay"==e.pay_type&&"takeout"==e.order_type)return e.vue="",void j.$toast("快去找人代付",j.getUrl({path:"/pages/public/peerpay/index",query:{pid:n.message.pid}}),1e3);var a="";n.wheel_url?a=n.wheel_url:n.message.wheel_url&&(a=n.message.wheel_url),n.pay_type&&(e.pay_type=n.pay_type),n=n.message;var i={takeout:{url_detail:{path:"/pages/order/detail",query:{id:t.id}}},errander:{url_detail:{path:"/pages/paotui/detail",query:{id:t.id}}},deliveryCard:{url_detail:{path:"/pages/deliveryCard/index"}},recharge:{url_detail:{path:"/pages/member/mine"}},paybill:{url_detail:{path:"/pages/member/mine"}},creditshop:{url_detail:{path:"/pages/creditshop/list"}},freelunch:{url_detail:{path:"/pages/freelunch/partakeSuccess"}},seckill:{url_detail:{path:"/pages/seckill/orderList"}},vip:{url_detail:{path:"/pages/vip/index"}},recharge_vip:{url_detail:{path:"/pages/member/mine"}},peerpay:{url_detail:{path:"/pages/public/peerpay/paylist",query:{payinfo_id:t.id}}},mealRedpacket_plus:{url_detail:{path:"/package/pages/mealRedpacket/orderplus"}},mealRedpacket:{url_detail:{path:"/package/pages/mealRedpacket/meal"}}}[e.order_type];if(i.url_detail=j.getUrl(i.url_detail),a&&(a="/"+a,i.url_detail=j.getUrl({path:a})),"wechat"==e.pay_type)return WeixinJSBridge.invoke("getBrandWCPayRequest",{appId:n.appId,timeStamp:n.timeStamp,nonceStr:n.nonceStr,package:n.package,signType:n.signType,paySign:n.paySign},function(t){return"get_brand_wcpay_request:ok"==t.err_msg?"function"==typeof e.success?(e.success(t),!1):i?(j.$toast("支付成功",i.url_detail,3e3,"replace"),!1):(j.$toast("支付成功"),!1):(e.vue.submitDisabled=!1,"get_brand_wcpay_request:cancel"==t.err_msg?(j.$toast("支付失败:您取消微信支付"),!1):(j.$toast("支付失败:"+t.err_msg),!1))}),!0;if("alipay"!=e.pay_type){if("credit"==e.pay_type){if("function"==typeof e.success)return e.success(res),!1}else if(("delivery"==e.pay_type||"finishMeal"==e.pay_type)&&"function"==typeof e.success)return e.success(res),!1;return i?(j.$toast("支付成功",i.url_detail,1500,"replace"),!0):(j.$toast("支付成功"),!1)}j.isWeixin()||(window.location.href=n.url)})},getLocation:function(){var e=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{successLocation:successLocation,successAddress:successAddress,fail:""},t=function(e){Object(A.a)().then(function(t){var n,a=a;a||(a=new t.Map("allmap")),a.plugin("AMap.Geolocation",function(){(n=new t.Geolocation({enableHighAccuracy:!0,timeout:1e4})).getCurrentPosition(),t.event.addListener(n,"complete",function(n){var i=n.position,o={lat:i.lat,lng:i.lng,location_x:i.lat,location_y:i.lng};"function"==typeof e.successLocation&&e.successLocation(o);var r=[i.lng,i.lat];a.plugin("AMap.Geocoder",function(){(new t.Geocoder).getAddress(r,function(t,n){if("complete"===t&&"OK"===n.info){var a=n.regeocode.addressComponent,o=n.regeocode.formattedAddress;o=(o=(o=o.replace(a.province,"")).replace(a.district,"")).replace(a.city,""),"function"==typeof e.successAddress&&e.successAddress({address:o,lat:i.lat,lng:i.lng,location_x:i.lat,location_y:i.lng})}})})}),t.event.addListener(n,"error",function(t){"function"==typeof e.fail&&(console.log("使用高德地图获取定位失败"),console.log(t),e.fail(t))})})})};j.isWeixin()&&j.isMobile()?(console.log("使用微信jsdk获取位置"),v.a.ready(function(){v.a.getLocation({type:"gcj02",success:function(t){console.log("使用微信jsdk获取位置成功"),console.log(t);var n={lat:t.latitude,lng:t.longitude,location_x:t.latitude,location_y:t.longitude};"function"==typeof e.successLocation&&e.successLocation(n),"function"==typeof e.successAddress&&j.request({url:"system/common/map/regeo",data:{latitude:t.latitude,longitude:t.longitude}}).then(function(t){var n=t.data.message;n.errno||e.successAddress(n.message)})},fail:function(n){t(e)}})})):t(e)},$toast:function(e,t,n){var a=arguments.length>3&&void 0!==arguments[3]?arguments[3]:"push",i=e;"string"==typeof i&&(i={message:e,url:t||"",duration:n||1500}),i=u()({type:"text",message:"",position:"middle",duration:1500},i),Object(S.d)(i),setTimeout(function(){if(i.url){if("object"==r()(i.url))return w.a[a](i.url),!1;if("refresh"==i.url)return window.location.reload(),!1;if(-1!=i.url.indexOf("https://")||-1!=i.url.indexOf("http://"))return window.location.href=i.url,!1}},i.duration)},jspost:function(e){if(!e||!e.url)return!1;var t=function(){"1"!=window.submitting&&(window.submitting="1",S.d.loading({message:"加载中",forbidClick:!0}),j.request({url:e.url||e.href,data:e.data||{}}).then(function(t){window.submitting="0",S.d.clear();var n=t.data.global;n&&n.order_tabs&&j.setStorage("orderTabs",n.order_tabs);var a=t.data.message;return a.errno?e.fail&&"function"==typeof e.fail?(e.fail(a),!1):(Object(S.d)(a.message),!1):e.success&&"function"==typeof e.success?(e.success(a.message),!1):void j.$toast({message:a.message||"操作成功",url:e.successUrl||"refresh"})}))};e.confirm?S.a.confirm({title:"温馨提示",message:e.confirm}).then(function(){t()}):t()},ish5app:function(){return navigator.userAgent.indexOf("CK 2.0")>-1},isWeixin:function(){return"micromessenger"==navigator.userAgent.toLowerCase().match(/MicroMessenger/i)},isMobile:function(){return!!navigator.userAgent.toLowerCase().match(/(phone|pad|pod|iPhone|iPod|ios|iPad|Android|Mobile|BlackBerry|IEMobile|MQQBrowser|JUC|Fennec|wOSBrowser|BrowserNG|WebOS|Symbian|Windows Phone)/i)},isPlala:function(){return navigator.userAgent.indexOf("PLALAWAIMAI")>-1},isDlala:function(){return navigator.userAgent.indexOf("DLALAWAIMAI")>-1},isQianfan:function(){return navigator.userAgent.indexOf("QianFan")>-1},isMajia:function(){return navigator.userAgent.indexOf("MAGAPPX")>-1},isCloud:function(){return navigator.userAgent.indexOf("APICloud")>-1},isIos:function(){var e=navigator.userAgent;return!!(e.indexOf("iPhone")>-1||e.indexOf("iPad")>-1||e.indexOf("Mac"))},isValidMobile:function(e){return!!/^[01][3456789][0-9]{9}$/.test(e)},getUserAgent:function(){return j.isWeixin()?"weixin":j.ish5app()?"h5app":j.isQianfan()?"qianfan":j.isMajia()?"majia":j.isMajia()?"majia":"wap"},setStorage:function(e,t){var n=arguments.length>2&&void 0!==arguments[2]?arguments[2]:0;if(e){if("string"!=typeof t){if(n>0){var a=new Date;t.expire=parseInt(a.getTime()/1e3)+n}t=c()(t)}window.localStorage.setItem(e,t)}},getStorage:function(e){if(e){var t=window.localStorage.getItem(e);try{t=JSON.parse(t)}catch(e){}if(t&&t.expire){var n=new Date;t.expire<n.getTime()/1e3&&(t={})}return t}},removeStorage:function(e){e&&window.localStorage.removeItem(e)},setCookie:function(e,t,n){expires=new Date,expires.setTime(expires.getTime()+1e3*n),document.cookie=j.prefixCookie(e)+"="+escape(t)+"; expires="+expires.toGMTString()+"; path=/"},getCookie:function(e){for(var t=j.prefixCookie(e)+"=",n=document.cookie.length,a=0;a<n;){var i=a+t.length;if(document.cookie.substring(a,i)==t){var o=document.cookie.indexOf(";",i);return-1==o&&(o=n),unescape(document.cookie.substring(i,o))}if(0==(a=document.cookie.indexOf(" ",a)+1))break}return null},delCookie:function(e){new Date;document.cookie=j.prefixCookie(e)+"=; expires=Thu, 01-Jan-70 00:00:01 GMT; path=/"},prefixCookie:function(e){var t=j.getStorage("cookie_pre");return t?t+e:e},getStyle:function(e,t){var n=arguments.length>2&&void 0!==arguments[2]?arguments[2]:"int",a=void 0;return a="scrollTop"===t?e.scrollTop:e.currentStyle?e.currentStyle[t]:document.defaultView.getComputedStyle(e,null)[t],"float"==n?parseFloat(a):parseInt(a)},toQueryPair:function(e,t){return void 0===t?e:e+"="+encodeURIComponent(null===t?"":String(t))},toQueryString:function(e){var t=[];for(var n in e){var a=e[n=encodeURIComponent(n)];if(a&&a.constructor==Array){for(var i,o=[],r=0,s=a.length;r<s;r++)i=a[r],o.push(j.toQueryPair(n,i));t=t.concat(o)}else t.push(j.toQueryPair(n,a))}return t.join("&")},getUrlParam:function(e,t){return decodeURIComponent((new RegExp("[?|&]"+t+"=([^&;]+?)(&|#|;|$)").exec(e)||[,""])[1].replace(/\+/g,"%20"))||null},getSiteRoot:function(){var e=window.location.pathname,t=e.indexOf("/addons/"),n=e.substring(0,t);return document.location.protocol+"//"+window.location.host+n+"/"},initBaseParams:function(){window.siteRoot=g,window.uniacid=j.getUrlParam(window.location.href,"i"),window.uniacid||(window.uniacid=1)},getSiteUrl:function(e,t,n){var a={ctrl:(e=e.split("/"))[0],ac:e[1],op:e[2]};e[3]&&(a.ta=e[3]);var i=j.toQueryString(a);return t&&("object"==(void 0===t?"undefined":r()(t))?i+="&"+j.toQueryString(t):"string"==typeof t&&(i+="&"+t)),i="/app/wxapp.php?i="+window.uniacid+"&c=entry&"+i+"&do=mobile&m=we7_wmall&from=vue&u="+j.getUserAgent(),n?g+i:i},getUrl:function(e){var t=e.path,n=e.query,a=void 0===n?{}:n;if(t)return-1==t.indexOf("/pages/")&&(t="/"+t),{path:t,query:a=u()(a,{i:window.uniacid})}},parseQuery:function(e){var t={num:0,items:{}};if(e)for(var n in e){-1==["i"].indexOf(n)&&(t.items[n]=e[n])}return t.items},getFullUrl:function(e){var t=arguments.length>1&&void 0!==arguments[1]?arguments[1]:{},n=p+"?i="+window.uniacid;if(-1==e.indexOf("/"))return n+"&"+e;n+="&m=we7_wmall&c=entry&do=mobile&";var a=e.split("?"),i=a[0].split("/");if(i[0]&&(n+="ctrl="+i[0]+"&"),i[1]&&(n+="ac="+i[1]+"&"),i[2]&&(n+="op="+i[2]+"&"),i[3]&&(n+="ta="+i[3]+"&"),a[1]&&(n+=a[1]+"&"),t&&(t="object"===(void 0===t?"undefined":r()(t))?t:{})&&"object"===(void 0===t?"undefined":r()(t)))for(var o in t)o&&t.hasOwnProperty(o)&&t[o]&&(n+=o+"="+t[o]+"&");var s=0;if(j.isWeixin()){var c=j.getUrlParam(n,"state"),l=j.getStorage("sessionid");c||t.data&&t.data.state||!l||(n=n+"&state=we7sid-"+l,s=1)}if(!s){var u;if(!(u=j.getStorage("idtoken")))(u=j.getCookie("idtoken"))&&j.setStorage("idtoken",u);!j.getUrlParam(n,"token")&&u&&(n=n+"&token="+u)}return n+="&from=vue&u="+j.getUserAgent()},checkToken:function(e){j.request({url:"wmall/member/mine"}).then(function(t){var n=t.data.message;n.errno?"function"==typeof e.fail&&e.fail(n):"function"==typeof e.success&&e.success(n)})},request:function(e){if(j.isDlala()||1==j.getStorage("idevelopment")){if(window.uniacid&&window.siteRoot){e=u()({method:"get",data:{},showLoading:!1},e);var t=j.getFullUrl(e.url),n={headers:{"Content-Type":"application/x-www-form-urlencoded;charset=utf-8"},method:e.method,url:t};if("get"==e.method?n.params=e.data:n.data=k.a.stringify(e.data),e.showLoading)var a=S.d.loading({message:"加载中",forbidClick:!0,duration:0});return new i.a(function(t,i){_()(n).then(function(n){e.showLoading&&a&&a.clear();var o="";n.data&&n.data.global&&(o=n.data.global).cookie_pre&&j.setStorage("cookie_pre",o.cookie_pre);var r=n.data.message;if("41100"==r.errno)return window.location.href=r.message.url,void i();if(("41000"==r.errno||"41001"==r.errno)&&j.isWeixin()){j.setStorage("sessionid",r.sessionid);var s=C()(window.location.href),c=r.oauthurl;return"41000"==r.errno&&(c=c+"&redirct_url="+s),window.location.href=c,void i(r)}if("41009"!=r.errno){if("41010"==r.errno)return w.a.push(j.getUrl({path:"/pages/storebd/login"})),void i(r);""!=o&&(o.system&&(j.setStorage("system",o.system),window.system=o.system),o.menufooter&&(j.setStorage("idmenufooter",o.menufooter),window.idmenufooter=o.menufooter),o.gconfig&&(window.gconfig=o.gconfig),o.jpush_relation&&(j.setStorage("idjpush_relation",o.jpush_relation),window.idjpush_relation=o.jpush_relation),o.share&&o.share.autoinit&&y.a.share(o.share),o.theme&&(j.setStorage("theme",o.theme),window.theme=o.theme),o.order_tabs&&j.setStorage("orderTabs",o.order_tabs)),t(n)}else{if(j.isWeixin()){j.setStorage("sessionid",r.sessionid);s=C()(window.location.href);window.location.href=r.oauthurl+"&redirct_url="+s}else{if(1==r.justweixin)return j.$toast("请在微信中访问","",1e10),!1;window.location.href&&-1==window.location.href.indexOf("pages/auth")&&j.setStorage("forwardUrl",window.location.href),j.removeStorage("deliveryerInfo"),j.removeStorage("idtoken"),j.isDlala()&&api.removePrefs({key:"idtoken"}),w.a.push(j.getUrl({path:"/pages/auth/login"}))}i(r)}}).catch(function(e){i(e)})})}j.$toast("公众号id参数错误",0)}else console.log("==================app=====================")},jsSetValue:function(e){var t=e.key||e.data.key,n=e.vue;return!(!t||!n)&&(e.hasOwnProperty("value")||(e.value=e.data.value),1==(t=t.split(".")).length?n[t[0]]=e.value:2==t.length?n[t[0]][t[1]]=e.value:3==t.length?n[t[0]][t[1]][t[2]]=e.value:4==t.length&&(n[t[0]][t[1]][t[2]][t[3]]=e.value),!e.success||"function"!=typeof e.success||(e.success(),!0))},jsToggleSwitch:function(e){var t=function(){if(!e.url&&!e.href)return j.jsSetValue(e),!0;"1"!=window.submitting&&(window.submitting="1",S.d.loading({message:"加载中",forbidClick:!0}),j.request({url:e.url||e.href,data:e.data||{}}).then(function(t){window.submitting="0",S.d.clear();var n=t.data.message;return n.errno?(Object(S.d)(n.message),!1):e.success&&"function"==typeof e.success?(e.success(n.message),!1):(j.jsSetValue(e),!0)}))};e.confirm?S.a.confirm({title:"温馨提示",message:e.confirm}).then(function(){t()}):t()},tomedia:function(e){return"string"!=typeof e?"":0==e.indexOf("http://")||0==e.indexOf("https://")?e:0==e.indexOf("images/")||0==e.indexOf("/images/")?window.system.attachurl+e:-1!=e.indexOf("addons/")?window.system.siteroot+e.substring(e.indexOf("addons/")):e},formatDate:function(e,t){(10==e.length||e<1e10)&&(e*=1e3);t&&"datetime"!=t?"date"==t&&(t="yyyy-MM-dd"):t="yyyy-MM-dd HH:mm",e=new Date(e);var n=t;return n=(n=(n=(n=(n=(n=(n=(n=(n=(n=(n=(n=(n=n.replace(/yyyy|YYYY/,e.getFullYear())).replace(/yy|YY/,e.getYear()%100>9?(e.getYear()%100).toString():"0"+e.getYear()%100)).replace(/MM/,e.getMonth()+1>9?e.getMonth()+1:"0"+(e.getMonth()+1))).replace(/M/g,e.getMonth())).replace(/w|W/g,["日","一","二","三","四","五","六"][e.getDay()])).replace(/dd|DD/,e.getDate()>9?e.getDate().toString():"0"+e.getDate())).replace(/d|D/g,e.getDate())).replace(/hh|HH/,e.getHours()>9?e.getHours().toString():"0"+e.getHours())).replace(/h|H/g,e.getHours())).replace(/mm/,e.getMinutes()>9?e.getMinutes().toString():"0"+e.getMinutes())).replace(/m/g,e.getMinutes())).replace(/ss|SS/,e.getSeconds()>9?e.getSeconds().toString():"0"+e.getSeconds())).replace(/s|S/g,e.getSeconds())},getUser:function(){var e=j.getStorage("ipuser");return e||(e={}),e},checkperm:function(e){if(!e)return!0;var t=j.getStorage("ipuser");if(!t)return!0;if("founder"==t.role)return!0;if(!t.perms)return!1;if("all"==t.perms)return!0;for(var n=e.split(","),a=!1,i=0;i<n.length;i++)if(-1!=t.perms.indexOf(n[i])){a=!0;break}return a},extend:function(e,t){var n;for(n in t)e[n]&&"[object Object]"===e[n].toString()?e[n]=j.extend(e[n],t[n]):null!=t[n]&&"undefined"!=t[n]&&(e[n]=t[n]);return e}});t.a=j},Hqqj:function(e,t){},I9hn:function(e,t){},IljC:function(e,t,n){(function(t){e.exports=function(e){if("undefined"==typeof window)return new t(e).toString("base64");if(void 0!==window.btoa)return window.btoa(decodeURIComponent(encodeURIComponent(e)));var n,a,i,o,r,s="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",c=0,l=0,u="",p=[];if(!e)return e;e=decodeURIComponent(encodeURIComponent(e));do{n=(r=e.charCodeAt(c++)<<16|e.charCodeAt(c++)<<8|e.charCodeAt(c++))>>18&63,a=r>>12&63,i=r>>6&63,o=63&r,p[l++]=s.charAt(n)+s.charAt(a)+s.charAt(i)+s.charAt(o)}while(c<e.length);u=p.join("");var d=e.length%3;return(d?u.slice(0,d-3):u)+"===".slice(d||3)}}).call(t,n("EuP9").Buffer)},NHnr:function(e,t,n){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var a=n("7+uW"),i={render:function(){var e=this.$createElement,t=this._self._c||e;return t("div",{attrs:{id:"app"}},[t("transition",{attrs:{name:"router-fade",mode:"out-in"}},[t("keep-alive",[this.$route.meta.keepAlive?t("router-view",{directives:[{name:"wechat-title",rawName:"v-wechat-title",value:this.$route.meta.title,expression:"$route.meta.title"}]}):this._e()],1)],1),this._v(" "),t("transition",{attrs:{name:"router-fade",mode:"out-in"}},[this.$route.meta.keepAlive?this._e():t("router-view",{directives:[{name:"wechat-title",rawName:"v-wechat-title",value:this.$route.meta.title,expression:"$route.meta.title"}]})],1)],1)},staticRenderFns:[]};var o=n("VU/8")({name:"App",components:{}},i,!1,function(e){n("I9hn")},null,null).exports,r=n("v5o6"),s=n.n(r),c={render:function(){this.$createElement;this._self._c;return this._m(0)},staticRenderFns:[function(){var e=this.$createElement,t=this._self._c||e;return t("div",{attrs:{id:"loading"}},[t("div",{staticClass:"sk-spinner sk-spinner-three-bounce"},[t("div",{staticClass:"sk-bounce1"}),this._v(" "),t("div",{staticClass:"sk-bounce2"}),this._v(" "),t("div",{staticClass:"sk-bounce3"})])])}]};var l=n("VU/8")({data:function(){return{}},mounted:function(){}},c,!1,function(e){n("QxTX")},"data-v-20389490",null).exports,u={props:{failedTips:{type:Object,default:function(){return{type:"message",tips:"获取定位失败!您可以选择手动搜索地址",btnText:"手动搜索地址",link:"/pages/home/location",position:"fixed"}}},position:{type:String,default:"fixed"}},data:function(){return{}}},p={render:function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("div",{class:e.failedTips.position,attrs:{id:"failed-tips"}},[n("div",{staticClass:"wrapper"},[n("img",{attrs:{src:"static/img/tips/"+e.failedTips.type+".png",alt:""}}),e._v(" "),n("p",{staticClass:"tips"},[e._v(e._s(e.failedTips.tips))]),e._v(" "),e.failedTips.link&&e.failedTips.btnText?n("a",{staticClass:"link",on:{click:function(t){e.util.jsUrl(e.failedTips.link)}}},[e._v(e._s(e.failedTips.btnText))]):e._e()])])},staticRenderFns:[]};var d=n("VU/8")(u,p,!1,function(e){n("+66b")},null,null).exports,f=n("woOf"),m=n.n(f),g=a.a.extend(n("xZQk").default),h=function(e){var t=new g({data:m()({},e)});return t.vm=t.$mount(),t.vm.visible=!0,t.dom=t.vm.$el,document.body.appendChild(t.dom),t.vm},v={install:function(e){e.prototype.$imessage=h}},y=n("NYxO"),w=n("EuEE"),b={setState:function(e,t){var n=t.type,a=t.key,i=t.val;e[n]||(e[n]={}),e[n][a]=i},replaceState:function(e,t){var n=t.key,a=t.val;e[n]=a},setLocation:function(e,t){e.locationInfo=t,w.a.setStorage("locationInfo",e.locationInfo,900)},getLocation:function(e){if(!e.locationInfo.location_x){var t=w.a.getStorage("locationInfo");t&&t.location_x&&(e.locationInfo=t)}},setSearch:function(e,t){e.isearch=t,w.a.setStorage("isearch",e.isearch)},getSearch:function(e){if(!e.isearch||!e.isearch.url){var t=w.a.getStorage("isearch");e.isearch=t}}},_=n("Hqqj"),x=n.n(_);a.a.use(y.a);var k=new y.a.Store({state:{filter:{takeout:{}}},getters:{},actions:x.a,mutations:b}),S=n("YaEn"),P=n("Fd2+"),C=(n("4ml/"),n("sEnP"),n("Yn4R")),A=n("wvfG"),O=n.n(A);s.a.attach(document.body),a.a.use(n("YqKu")),a.a.use(P.e),a.a.use(v),a.a.use(P.c,{lazyComponent:!0,loading:""}),a.a.use(O.a),a.a.component("iloading",l),a.a.component("failedTips",d),a.a.config.productionTip=!1,a.a.prototype.util=w.a,a.a.prototype.wx=C.a,a.a.prototype.isWeixin=w.a.isWeixin(),a.a.prototype.theme=w.a.getStorage("theme"),a.a.prototype.util.initBaseParams(),a.a.prototype.wx.init(),new a.a({el:"#app",router:S.a,store:k,components:{App:o},template:"<App/>"})},QxTX:function(e,t){},XbGN:function(e,t,n){"use strict";var a=n("mvHQ"),i=n.n(a),o=n("EuEE"),r={init:function(e){var t=o.a.getStorage("idjpush_relation");t&&o.a.isDlala()&&setTimeout(function(){r.relation=t,r.checkconnect(),r.initAjpush(),r.checkSmartUpdate()},1e3),r.params=e},checkSmartUpdate:function(){api.addEventListener({name:"smartupdatefinish"},function(e,t){api.rebootApp()})},checkconnect:function(){if(api.addEventListener({name:"offline"},function(e,t){return api.openFrame({name:"frm_connect",url:"widget://html/connect.html",bounces:!0,rect:{x:0,y:0,w:"auto",h:"auto"}}),!1}),"none"==api.connectType)return api.openFrame({name:"frm_connect",url:"widget://html/connect.html",bounces:!0,rect:{x:0,y:0,w:"auto",h:"auto"}}),!1;api.addEventListener({name:"online"},function(e,t){api.closeFrame({name:"frm_connect"});var n=r.igetPrefs("url_cn");n&&(window.location.href=n)})},scanQRCode:function(e){api.require("FNScanner").open({autorotation:!0},function(t,n){t?"success"==t.eventType&&("function"==typeof e.success?e.success({content:t.content}):-1==t.content.indexOf("https://")&&-1==t.content.indexOf("http://")||(window.location.href=t.content)):"function"==typeof e.fail?e.fail({content:t.content}):alert(i()(t))})},netAudioPlay:function(e,t){var n=api.require("netAudio");return t>0&&n.play({path:e.resource},function(n){n.complete&&o.a.request({url:"system/common/order/check",data:{id:e.id}}).then(function(n){n.data.message.errno||(t--,r.netAudioPlay(e,t))})}),!0},speechRecognizerRead:function(e,t){var n=api.require("iflyRecognition");return n.createUtility({android_appid:"5bd167ea",ios_appid:"5bd17b48"},function(e,t){e.status||api.alert({msg:"创建讯飞失败"})}),t>0&&n.read({readStr:e.voice_text,speed:60,volume:100,voice:"xiaoyan",rate:16e3},function(n,a){n.status&&100==n.speakProgress&&o.a.request({url:"system/common/takeout/check",data:{id:e.id||e.order_id}}).then(function(n){n.data.message.errno&&(t--,r.speechRecognizerRead(e,t))})}),!0},play:function(e){var t=r.igetPrefs("idphonic");return t||(t={voice:1,vibrate:1,voice_type:1}),t.vibrate&&api.notification({vibrate:[3e3,3e3]}),t.voice&&r.speechRecognizerRead(e,1),!0},initAjpush:function(){var e=api.require("ajpush");e.setBadge({badge:0}),e.init(function(e){e&&e.status});var t=r.igetPrefs("idpush_code");if(r.relation&&r.relation.code&&(!t||t&&t!=r.relation.code)){var n={};r.relation.alias&&(n.alias=r.relation.alias),r.relation.tags&&(n.tags=r.relation.tags),e.bindAliasAndTags(n,function(e,t){var n=e.statusCode;0==n?r.isetPrefs("idpush_code",r.relation.code):alert("同步推送信息出错："+n)})}e.setListener(function(e){var t=e.extra;try{t=JSON.parse(e.extra)}catch(e){}"ios"==api.systemType&&api.require("ajpush").setBadge({badge:0});o.a.getStorage("idtoken")&&(r.play(t),!r.params||"orderTakeout"!=r.params.page&&"orderPaotui"!=r.params.page||r.params.vue.onLoad(!0))}),api.addEventListener({name:"appintent"},function(e,t){if(e&&e.appParam.ajpush){var n=e.appParam.ajpush;try{var a=JSON.parse(n.extra)}catch(e){a=n.extra}location.href=a.url}}),api.addEventListener({name:"noticeclicked"},function(e,t){if(e&&e.value){api.require("ajpush").setBadge({badge:0});var n=e.value.extra;location.href=n.url}})},igetPrefs:function(e){var t=e.split("."),n="";if(1==t.length){n=api.getPrefs({sync:!0,key:e});try{n=JSON.parse(n)}catch(e){}}else if(2==t.length){(a=r.igetPrefs(t[0]))&&a[t[1]]&&(n=a[t[1]])}else if(3==t.length){var a;(a=r.igetPrefs(t[0]))&&a[t[1]]&&(n=a[t[1]][t[2]])}return n},isetPrefs:function(e,t){var n=e.split(".");if(1==n.length)api.setPrefs({key:e,value:t});else if(2==n.length){(a=r.igetPrefs(n[0]))||(a={}),a[n[1]]=t,api.setPrefs({key:n[0],value:a})}else if(3==n.length){var a;(a=r.igetPrefs(n[0]))||(a={}),a[n[1]]||(a[n[1]]={}),a[n[1]][n[2]]=t,api.setPrefs({key:n[0],value:a})}return!0}};t.a=r},YaEn:function(e,t,n){"use strict";var a=n("7+uW"),i=n("/ocq");a.a.use(i.a),t.a=new i.a({scrollBehavior:function(e,t,n){return n||(t.meta.keepAlive&&(t.meta.savedPosition=document.body.scrollTop),{x:0,y:e.meta.savedPosition||0})},routes:[{path:"/",redirect:"/pages/order/takeout"},{path:"/pages/home/index",name:"homeIndex",meta:{title:"首页"},component:function(e){return Promise.all([n.e(0),n.e(4)]).then(function(){var t=[n("FP3a")];e.apply(null,t)}.bind(this)).catch(n.oe)}},{path:"/pages/order/takeout",name:"takeoutList",meta:{title:"订单列表"},component:function(e){return Promise.all([n.e(0),n.e(10)]).then(function(){var t=[n("jPG2")];e.apply(null,t)}.bind(this)).catch(n.oe)}},{path:"/pages/order/detail",name:"takeoutDetail",meta:{title:"订单详情"},component:function(e){return Promise.all([n.e(0),n.e(27)]).then(function(){var t=[n("IeHp")];e.apply(null,t)}.bind(this)).catch(n.oe)}},{path:"/pages/order/op",name:"takeoutOp",meta:{title:"选择原因"},component:function(e){return Promise.all([n.e(0),n.e(26)]).then(function(){var t=[n("OB9n")];e.apply(null,t)}.bind(this)).catch(n.oe)}},{path:"/pages/finance/getcashList",name:"financeGetcashList",meta:{title:"提现记录"},component:function(e){return Promise.all([n.e(0),n.e(25)]).then(function(){var t=[n("cogC")];e.apply(null,t)}.bind(this)).catch(n.oe)}},{path:"/pages/finance/getcashDetail",name:"financeGetcashDetail",meta:{title:"交易详情"},component:function(e){return Promise.all([n.e(0),n.e(24)]).then(function(){var t=[n("Hked")];e.apply(null,t)}.bind(this)).catch(n.oe)}},{path:"/pages/finance/current",name:"financeCurrent",meta:{title:"账户明细"},component:function(e){return Promise.all([n.e(0),n.e(28)]).then(function(){var t=[n("imhH")];e.apply(null,t)}.bind(this)).catch(n.oe)}},{path:"/pages/finance/currentDetail",name:"financeCurrentDetail",meta:{title:"交易详情"},component:function(e){return Promise.all([n.e(0),n.e(17)]).then(function(){var t=[n("m1Xp")];e.apply(null,t)}.bind(this)).catch(n.oe)}},{path:"/pages/finance/index",name:"financeIndex",meta:{title:"我的账户"},component:function(e){return Promise.all([n.e(0),n.e(9)]).then(function(){var t=[n("YoQz")];e.apply(null,t)}.bind(this)).catch(n.oe)}},{path:"/pages/finance/getcash",name:"financeGetcash",meta:{title:"申请提现"},component:function(e){return Promise.all([n.e(0),n.e(11)]).then(function(){var t=[n("c/2g")];e.apply(null,t)}.bind(this)).catch(n.oe)}},{path:"/pages/finance/account",name:"financeAccount",meta:{title:"提现账户"},component:function(e){return Promise.all([n.e(0),n.e(19)]).then(function(){var t=[n("4zPV")];e.apply(null,t)}.bind(this)).catch(n.oe)}},{path:"/pages/member/mine",name:"memberMine",meta:{title:"个人中心"},component:function(e){return Promise.all([n.e(0),n.e(1)]).then(function(){var t=[n("Ez5F")];e.apply(null,t)}.bind(this)).catch(n.oe)}},{path:"/pages/member/setting",name:"memberSetting",meta:{title:"我的设置"},component:function(e){return Promise.all([n.e(0),n.e(31)]).then(function(){var t=[n("R89y")];e.apply(null,t)}.bind(this)).catch(n.oe)}},{path:"/pages/member/profilePassword",name:"memberProfilePassword",meta:{title:"修改密码"},component:function(e){return Promise.all([n.e(0),n.e(12)]).then(function(){var t=[n("KV36")];e.apply(null,t)}.bind(this)).catch(n.oe)}},{path:"/pages/paotui/index",name:"paotuiList",meta:{title:"订单列表"},component:function(e){return Promise.all([n.e(0),n.e(3)]).then(function(){var t=[n("37pY")];e.apply(null,t)}.bind(this)).catch(n.oe)}},{path:"/pages/paotui/detail",name:"paotuiDetail",meta:{title:"订单详情"},component:function(e){return Promise.all([n.e(0),n.e(2)]).then(function(){var t=[n("LN1q")];e.apply(null,t)}.bind(this)).catch(n.oe)}},{path:"/pages/paotui/op",name:"paotuiOp",meta:{title:"选择原因"},component:function(e){return Promise.all([n.e(0),n.e(29)]).then(function(){var t=[n("TBQd")];e.apply(null,t)}.bind(this)).catch(n.oe)}},{path:"/pages/member/phonic",name:"memberPhonic",meta:{title:"语音设置"},component:function(e){return Promise.all([n.e(0),n.e(6)]).then(function(){var t=[n("eUYf")];e.apply(null,t)}.bind(this)).catch(n.oe)}},{path:"/pages/statcenter/index",name:"statcenterIndex",meta:{title:"配送统计"},component:function(e){return Promise.all([n.e(0),n.e(8)]).then(function(){var t=[n("P53F")];e.apply(null,t)}.bind(this)).catch(n.oe)}},{path:"/pages/statcenter/takeout",name:"statcenterTakeout",meta:{title:"外卖统计"},component:function(e){return Promise.all([n.e(0),n.e(14)]).then(function(){var t=[n("8RL0")];e.apply(null,t)}.bind(this)).catch(n.oe)}},{path:"/pages/statcenter/errander",name:"statcenterErrander",meta:{title:"跑腿统计"},component:function(e){return Promise.all([n.e(0),n.e(22)]).then(function(){var t=[n("E9VN")];e.apply(null,t)}.bind(this)).catch(n.oe)}},{path:"/pages/statcenter/detail",name:"statcenterDetail",meta:{title:"统计详情"},component:function(e){return Promise.all([n.e(0),n.e(15)]).then(function(){var t=[n("pXek")];e.apply(null,t)}.bind(this)).catch(n.oe)}},{path:"/pages/statcenter/rank",meta:{title:"外卖排行榜"},component:function(e){return Promise.all([n.e(0),n.e(20)]).then(function(){var t=[n("E9XD")];e.apply(null,t)}.bind(this)).catch(n.oe)}},{path:"/pages/statcenter/erranderRank",meta:{title:"跑腿排行榜"},component:function(e){return Promise.all([n.e(0),n.e(5)]).then(function(){var t=[n("tRIX")];e.apply(null,t)}.bind(this)).catch(n.oe)}},{path:"/pages/auth/login",name:"authLogin",meta:{title:"登陆"},component:function(e){return Promise.all([n.e(0),n.e(13)]).then(function(){var t=[n("Ls0E")];e.apply(null,t)}.bind(this)).catch(n.oe)}},{path:"/pages/auth/forget",name:"authForget",meta:{title:"忘记密码"},component:function(e){return Promise.all([n.e(0),n.e(23)]).then(function(){var t=[n("bXtx")];e.apply(null,t)}.bind(this)).catch(n.oe)}},{path:"/pages/comment/list",name:"commentList",meta:{title:"我的评价"},component:function(e){return Promise.all([n.e(0),n.e(7)]).then(function(){var t=[n("X2t/")];e.apply(null,t)}.bind(this)).catch(n.oe)}},{path:"/pages/home/news/index",name:"newsIndex",meta:{title:"资讯"},component:function(e){return Promise.all([n.e(0),n.e(30)]).then(function(){var t=[n("Mu6/")];e.apply(null,t)}.bind(this)).catch(n.oe)}},{path:"/pages/home/news/detail",name:"newsDetail",meta:{title:"资讯详情"},component:function(e){return Promise.all([n.e(0),n.e(21)]).then(function(){var t=[n("IUp2")];e.apply(null,t)}.bind(this)).catch(n.oe)}},{path:"/pages/home/setting",name:"homeSetting",meta:{title:"设置"},component:function(e){return Promise.all([n.e(0),n.e(18)]).then(function(){var t=[n("pjzi")];e.apply(null,t)}.bind(this)).catch(n.oe)}},{path:"/pages/statcenter/location",name:"statcenterLocation",meta:{title:"定位信息"},component:function(e){return Promise.all([n.e(0),n.e(16)]).then(function(){var t=[n("R2Oa")];e.apply(null,t)}.bind(this)).catch(n.oe)}}]})},Yn4R:function(e,t,n){"use strict";var a=n("woOf"),i=n.n(a),o=n("mvHQ"),r=n.n(o),s=n("BO1k"),c=n.n(s),l=n("Zrlr"),u=n.n(l),p=n("wxAW"),d=n.n(p),f=n("EuEE"),m=n("fxnj"),g=n.n(m),h=[],v=!1,y=function(){function e(){u()(this,e)}return d()(e,null,[{key:"init",value:function(){var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{};t.apis||(t.apis=["onMenuShareTimeline","onMenuShareAppMessage","onMenuShareQQ","onMenuShareWeibo","hideMenuItems","showMenuItems","hideAllNonBaseMenuItem","showAllNonBaseMenuItem","translateVoice","startRecord","stopRecord","onRecordEnd","playVoice","pauseVoice","stopVoice","uploadVoice","downloadVoice","chooseImage","previewImage","uploadImage","downloadImage","getNetworkType","openLocation","getLocation","hideOptionMenu","showOptionMenu","closeWindow","scanQRCode","chooseWXPay","openProductSpecificView","addCard","chooseCard","openCard"]);var n={};location.hash?n.url=location.href.slice(0,-location.hash.length):n.url=location.href,f.a.request({url:"system/common/jssdk",data:n}).then(function(n){var a=n.data.message;if(a.errno)return console.log("配置错误, 初始化微信JS接口失败:"),void console.log(a.message);g.a.ready(function(){if(t.shareData&&e.share(t.shareData),!0===t.hideOption&&g.a.hideOptionMenu(),v=!0,h.length>0){var n=!0,a=!1,i=void 0;try{for(var o,r=c()(h);!(n=(o=r.next()).done);n=!0){(0,o.value)()}}catch(e){a=!0,i=e}finally{try{!n&&r.return&&r.return()}finally{if(a)throw i}}}}),a=a.message.jssdkconfig,g.a.config({debug:a.debug||!1,appId:a.appId,timestamp:parseInt(a.timestamp),nonceStr:a.nonceStr,signature:a.signature,jsApiList:t.apis.slice(0)}),g.a.error(function(e){a.debug&&alert(r()(e)),console.log("微信JSSDK初始化失败"),console.log(e)}),"function"==typeof callback&&callback()})}},{key:"share",value:function(t){t||(t=window.shareData);var n=function(e){var n={title:t.title,link:t.link,imgUrl:t.imgUrl,success:function(){"function"==typeof t.success&&t.success()},cancel:function(){"function"==typeof t.cancel&&t.cancel()}};return i()(n,e)};e.ready(function(){g.a.onMenuShareTimeline(n({})),g.a.onMenuShareAppMessage(n({desc:t.desc,type:"link",dataUrl:""}))})}},{key:"ready",value:function(e){v?g.a.ready(e):h.push(e)}}]),e}();t.a=y},Yo4o:function(e,t,n){"use strict";t.a=function(){return new i.a(function(e,t){window.initMap=function(){e(AMap)};var n=document.createElement("script");n.type="text/javascript",n.src="//webapi.amap.com/maps?v=1.4.1&key=550a3bf0cb6d96c3b43d330fb7d86950&callback=initMap",n.onerror=t,document.head.appendChild(n)})};var a=n("//Fk"),i=n.n(a)},lQnO:function(e,t){},sEnP:function(e,t){},xZQk:function(e,t,n){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var a={data:function(){return{type:"info",message:"提示信息",description:"描述信息",redirect:"/pages/order/takeout",btnText:"确定",show:!0}},methods:{onJsUrl:function(e){var t=this;this.util.jsUrl(e),setTimeout(function(){t.$destroy(!0),t.$el.parentNode.removeChild(t.$el)},100)}}},i={render:function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("div",{attrs:{id:"imessage"}},[n("div",{staticClass:"content",class:e.type},[e._m(0),e._v(" "),n("div",{staticClass:"text-area"},[n("p",{staticClass:"msg-title"},[e._v(e._s(e.message))]),e._v(" "),e.description?n("p",{staticClass:"desc"},[e._v(e._s(e.description))]):e._e()]),e._v(" "),n("div",{staticClass:"btn-area"},[n("div",{staticClass:"button",on:{click:function(t){e.onJsUrl(e.redirect)}}},[e._v(e._s(e.btnText))])]),e._v(" "),n("div",{staticClass:"extra-area"},[n("div",{on:{click:function(t){e.onJsUrl("/pages/order/takeout")}}},[e._v("返回首页")])])])])},staticRenderFns:[function(){var e=this.$createElement,t=this._self._c||e;return t("div",{staticClass:"icon-area"},[t("i",{staticClass:"icon icon-icon"})])}]};var o=n("VU/8")(a,i,!1,function(e){n("lQnO")},"data-v-46eaa22e",null);t.default=o.exports}},["NHnr"]);
//# sourceMappingURL=app.8b09f1f37bd73a949b59.js.map