define(["laytpl"], function (a) {
    var b = {baseUrl: "", siteUrl: "", attachUrl: "", staticUrl: "../addons/we7_wmall/static/", uniacid: ""},
        c = {options: {}};
    return c.init = function (a) {
        this.options = $.extend({}, b, a || {})
    }, c.querystring = function (a) {
        var b = location.search.match(new RegExp("[?&]" + a + "=([^&]+)", "i"));
        return null == b || b.length < 1 ? "" : b[1]
    }, c.toQueryPair = function (a, b) {
        return void 0 === b ? a : a + "=" + encodeURIComponent(null === b ? "" : String(b))
    }, c.toQueryString = function (a) {
        var b = [];
        for (var c in a) {
            c = encodeURIComponent(c);
            var d = a[c];
            if (d && d.constructor == Array) {
                for (var e, f = [], g = 0, h = d.length; g < h; g++) e = d[g], f.push(this.toQueryPair(c, e));
                b = b.concat(f)
            } else b.push(this.toQueryPair(c, d))
        }
        return b.join("&")
    }, c.getUrl = function (a, b, c) {
        a = a.split("/");
        var d = "ctrl=" + a[0] + "&ac=" + a[1] + "&op=" + a[2];
        a[3] && (d += "&ta=" + a[3]);
        var e = this.options.baseUrl.replace("ctrl=ROUTES", d);
        return b && ("object" == typeof b ? e += "&" + this.toQueryString(b) : "string" == typeof b && (e += "&" + b)), c ? this.options.siteUrl + "app/" + e : e
    }, c.getLocation = function (a, b, d) {
        if (c.isWeixin()) wx.ready(function () {
            wx.getLocation({
                type: "gcj02", success: function (d) {
                    var e = {lat: d.latitude, lng: d.longitude, location_x: d.latitude, location_y: d.longitude};
                    $.isFunction(a) && a(e), $.isFunction(b) && $.post(c.getUrl("system/common/google"), {
                        lat: d.latitude,
                        lng: d.longitude,
                        ta:'getAddressByLngLat'
                    }, function (rt) {
                        var rt = $.parseJSON(rt);
                        rt = rt.message, rt.errno || b(rt.message)
                    })
                }, fail: function (c) {
                }
            })
        }); else {
            if (navigator.geolocation) {
                //获取当前地理位置
                navigator.geolocation.getCurrentPosition(function (position) {
                        var coords = position.coords;
                        console.log(coords) ;
                        a({ lat: coords.latitude, lng: coords.longitude});

                        $.post(c.getUrl("system/common/google"), {
                            lat: coords.latitude,
                            lng: coords.longitude ,
                            ta:'getAddressByLngLat'
                        }, function (rt) {
                            var rt = $.parseJSON(rt);
                            rt = rt.message, rt.errno || b(rt.message)
                        })
                    },
                    function (error) {
                        alert("获取地址失败");
                    });
            } else {
                alert("获取地址失败");
            }
        }
    }, c.image = function (a, b, d) {
        var e = {fileNum: 1, channel: "wap"}, d = $.extend({}, e, d), f = $(a);
        if (!c.isWeixin() || "weixin" != d.channel && "wechat" != d.channel) {
            var g = f.find('input[type="file"]');
            g.off("change"), g.change(function (a) {
                var d = a.target;
                if (d.files && d.files.length > 0) for (var e = 0; e < d.files.length; e++) {
                    $.showIndicator();
                    var g = new FormData;
                    g.append("file", d.files[e]), $.ajax({
                        url: "./index.php?c=utility&a=file&do=upload&type=image&thumb=1&i=" + c.options.uniacid,
                        type: "POST",
                        processData: !1,
                        contentType: !1,
                        dataType: "json",
                        data: g,
                        success: function (a) {
                            $.hideIndicator(), a.url ? $.isFunction(b) && b(f, a) : a.message ? alert("上传文件失败, 具体原因:" + a.message) : alert("上传文件失败, 具体原因:" + a.error.message)
                        },
                        error: function (a) {
                            $.hideIndicator(), alert("上传文件失败")
                        }
                    })
                }
            })
        } else wx.ready(function () {
            wx.chooseImage({
                count: d.fileNum,
                sizeType: ["compressed"],
                sourceType: ["album", "camera"],
                success: function (a) {
                    var d = a.localIds;
                    if (d.length > 0) for (var e = 0; e < d.length; e++) $.showIndicator(), wx.uploadImage({
                        localId: d[e],
                        isShowProgressTips: 0,
                        success: function (a) {
                            var d = a.serverId;
                            c.querystring("i");
                            $.post(c.getUrl("system/common/file/image", {channel: "weixin"}), {media_id: d}, function (a) {
                                $.hideIndicator();
                                var c = $.parseJSON(a);
                                0 == c.message.errno ? $.isFunction(b) && b(f, c.message) : alert("上传文件失败, 具体原因:" + c.message.message)
                            })
                        },
                        fail: function () {
                        }
                    })
                }
            })
        })
    }, c.cookie = {
        prefix: we7_wmall.prefix, set: function (a, b, c) {
            expires = new Date, expires.setTime(expires.getTime() + 1e3 * c), document.cookie = this.name(a) + "=" + escape(b) + "; expires=" + expires.toGMTString() + "; path=/"
        }, get: function (a) {
            for (cookie_name = this.name(a) + "=", cookie_length = document.cookie.length, cookie_begin = 0; cookie_begin < cookie_length;) {
                if (value_begin = cookie_begin + cookie_name.length, document.cookie.substring(cookie_begin, value_begin) == cookie_name) {
                    var b = document.cookie.indexOf(";", value_begin);
                    return -1 == b && (b = cookie_length), unescape(document.cookie.substring(value_begin, b))
                }
                if (cookie_begin = document.cookie.indexOf(" ", cookie_begin) + 1, 0 == cookie_begin) break
            }
            return null
        }, del: function (a) {
            new Date;
            document.cookie = this.name(a) + "=; expires=Thu, 01-Jan-70 00:00:01 GMT; path=/"
        }, name: function (a) {
            return this.prefix + a
        }
    }, c.countDown = function (a, b, c, d, e, f) {
        if ($.isNumber(a)) var g = a; else var g = new Date(a).getTime() / 1e3;
        var h = parseInt(g - (new Date).getTime() / 1e3), i = setInterval(function () {
            if (h > 0) {
                h -= 1;
                var a = Math.floor(h / 3600 / 24), g = Math.floor(h / 3600 % 24), j = Math.floor(h / 60 % 60),
                    k = Math.floor(h % 60);
                a = a < 10 ? "0" + a : a, g = g < 10 ? "0" + g : g, j = j < 10 ? "0" + j : j, k = k < 10 ? "0" + k : k, f ? (a = String(a).split(""), g = String(g).split(""), j = String(j).split(""), k = String(k).split(""), $(b + "_0").text(a[0]), $(b + "_1").text(a[1]), $(c + "_0").text(g[0]), $(c + "_1").text(g[1]), $(d + "_0").text(j[0]), $(d + "_1").text(j[1]), $(e + "_0").text(k[0]), $(e + "_1").text(k[1])) : ($(b).text(a), $(c).text(g), $(d).text(j), $(e).text(k))
            } else clearInterval(i)
        }, 1e3)
    }, c.ish5app = function () {
        return navigator.userAgent.indexOf("CK 2.0") > -1
    }, c.isWeixin = function () {
        return "micromessenger" == navigator.userAgent.toLowerCase().match(/MicroMessenger/i)
    }, c.isQianfan = function () {
        return navigator.userAgent.indexOf("QianFan") > -1
    }, c.isMajia = function () {
        return navigator.userAgent.indexOf("MAGAPPX") > -1
    }, c.isCloud = function () {
        return navigator.userAgent.indexOf("APICloud") > -1
    }, c.distance = function (a, b, d, e) {
        var d = d || 1, e = e || "", f = {
            key: "37bb6a3b1656ba7d7dc8946e7e26f39b",
            type: d,
            origins: a[0] + "," + a[1],
            destination: b[0] + "," + b[1],
            output: "json"
        }, g = "http://restapi.amap.com/v3/distance?" + c.toQueryString(f);
        $.getJSON(g, function (a) {
            if ("OK" != a.info) var b = {errno: a.infocode, message: a.info}; else var b = {
                errno: 0,
                message: a.results[0],
                distance: (a.results[0].distance / 1e3).toFixed(3)
            };
            $.isFunction(e) && e(b)
        })
    }, c.tomedia = function (a) {
        return "string" != typeof a ? "" : 0 == a.indexOf("images/") || 0 == a.indexOf("/images/") ? this.options.attachUrl + a : 0 == a.indexOf("http://") || 0 == a.indexOf("https://") || 0 == a.indexOf("../addons/we7_wmall/") ? a : void 0
    }, c.localStorage = {
        push: function (a, b) {
            var d = c.localStorage.get(a);
            d && $.isArray(d) || (d = []), d.push(b), localStorage.setItem(a, JSON.stringify(d))
        }, remove: function (a) {
            return localStorage.removeItem(a), !0
        }, get: function (a) {
            var b = localStorage.getItem(a);
            return b = JSON.parse(b)
        }, set: function (a, b) {
            var d = c.localStorage.get(a);
            d || (d = b), "object" == typeof d && (d = JSON.stringify(d)), localStorage.setItem(a, d)
        }
    }, window.tiny = c, c
});
