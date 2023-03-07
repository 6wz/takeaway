define(["tiny" , "language"], function (a , language) {
    var b = {};
    return b.initIndex = function () {
        $(document).on("click", "#scanqrcode", function () {
            $.confirm(language.translation("如果您已经到店,请点击'扫码下单'并扫描桌子上的二维码进行店内下单"), function () {
                wx.ready(function () {
                    wx.scanQRCode({
                        needResult: 0, scanType: ["qrCode", "barCode"], success: function (a) {
                            a.resultStr
                        }
                    })
                })
            })
        })
    }, b.initReport = function (b) {
        $("#btnSubmit").click(function () {
            var c = $(this);
            if (c.hasClass("disabled")) return !1;
            var d = $(':radio[name="title"]:checked').val();
            if (!d) return $.toast(language.translation("投诉类型不能为空")), !1;
            var e = $('textarea[name="note"]').val();
            if (!e) return $.toast(language.translation("投诉内容不能为空")), !1;
            var f = $(':text[name="mobile"]').val();
            if (!/^[01][3456789][0-9]{9}$/.test(f)) return $.toast(language.translation("手机号格式错误")), !1;
            var g = {sid: b.sid, title: d, note: e, mobile: f, thumbs: []};
            $('.tpl-image .image-item input[type!="file"]').each(function () {
                var a = $.trim($(this).val());
                a && g.thumbs.push(a)
            }), c.addClass("disabled"), $.post(a.getUrl("wmall/store/report/post"), g, function (d) {
                var e = $.parseJSON(d);
                if (0 != e.message.errno) return c.removeClass("disabled"), $.toast(e.message.message), !1;
                $.toast("投诉成功", a.getUrl("wmall/store/index", {sid: b.sid}))
            })
        })
    }, b.initSettle = function (b) {
        1 == b.mobile_verify_status && $("#btn-code").click(function () {
            if ($(this).hasClass("disabled")) return !1;
            var b = $.trim($(':text[name="mobile"]').val());
            if (!b) return $.toast(language.translation("请输入手机号")), !1;
            if (!/^[01][3456789][0-9]{9}/.test(b)) return $.toast(language.translation("手机号格式错误")), !1;
            var c = $.trim($('input[name="captcha"]').val());
            if (!c) return $.toast(language.translation("请输入图形验证码")), !1;
            var d = $(this);
            d.addClass("disabled");
            var e = 60;
            d.html(e + language.translation("秒后重新获取"));
            var f = setInterval(function () {
                e--, e <= 0 ? (clearInterval(f), d.html(language.translation("重新获取验证码")), d.removeClass("disabled"), e = 60) : d.html(e + language.translation("秒后重新获取"))
            }, 1e3);
            return $.post(a.getUrl("system/common/code"), {mobile: b, product: language.translation("商户入驻"), captcha: c}, function (a) {
                "success" != a ? $.toast(a) : $.toast(language.translation("验证码发送成功, 请注意查收"))
            }), !1
        }), $(".aptitude-img").off("click").on("click", function () {
            var b = $(this);
            a.image(b[0], function (a, b) {
                var c = b.message ? b.message : b.attachment;
                a.find("img").attr("src", b.url), a.find('input[name^="qualification"]').val(c)
            }, {channel: "wap"})
        }), $("#btn-account").click(function () {
            var c = $(this);
            if (c.hasClass("disabled")) return !1;
            var d = $.trim($('#form-account :text[name="mobile"]').val()), e = /^[01][3456789][0-9]{9}$/;
            if (!e.test(d)) return $.toast(language.translation("手机号格式错误")), !1;
            var f = "";
            if (1 == b.mobile_verify_status && !(f = $.trim($('#form-account :text[name="code"]').val()))) return $.toast(language.translation("验证码不能为空")), !1;
            var g = $.trim($('#form-account :password[name="password"]').val());
            if (!g) return $.toast(language.translation("请输入密码"), !1;
            var h = g.length;
            if (h < 8 || h > 20) return $.toast(language.translation("请输入8-20位密码")), !1;
            var e = /[0-9]+[a-zA-Z]+[0-9a-zA-Z]*|[a-zA-Z]+[0-9]+[0-9a-zA-Z]*/;
            if (!e.test(g)) return $.toast(language.translation("密码必须由数字和字母组合")), !1;
            if ($.trim($('#form-account :password[name="repassword"]').val()) != g) return $.toast(language.translation("两次密码输入不一致")), !1;
            var i = $.trim($('#form-account :text[name="title"]').val());
            if (!i) return $.toast(language.translation("姓名不能为空")), !1;
            var j = $.trim($(':hidden[name="openid"]').val()), k = 0;
            if (b.isagent > 0 && !(k = $('#form-account :hidden[name="agentid"]').val())) return $.toast(language.translation("请选择所属区域")), !1;
            c.addClass("disabled");
            var l = {
                title: i,
                password: g,
                mobile: d,
                code: f,
                openid: j,
                nickname: $.trim($(':hidden[name="nickname"]').val()),
                avatar: $.trim($(':hidden[name="avatar"]').val()),
                agentid: k
            };
            $.post(a.getUrl("wmall/store/settle/account"), l, function (b) {
                var d = $.parseJSON(b);
                return 0 != d.message.errno ? ($.toast(d.message.message), c.removeClass("disabled"), !1) : ($.toast(language.translation("注册成功,跳转中..."), a.getUrl("wmall/store/settle/store")), !1)
            })
        }), $("#btn-store").click(function () {
            var c = $(this);
            if ($(this).hasClass("disabled")) return !1;
            var d = $.trim($('#form-store :text[name="title"]').val());
            if (!d) return $.toast(language.translation("商户名称不能为空")), !1;
            var e = $.trim($('#form-store :text[name="address"]').val());
            if (!d) return $.toast(language.translation("商户地址不能为空")), !1;
            var f = $.trim($('#form-store :text[name="telephone"]').val());
            if (!d) return $.toast(language.translation("商户电话不能为空")), !1;
            var g = $.trim($('#form-store textarea[name="content"]').val());
            if (!d) return $.toast(language.translation("商户简介不能为空")), !1;
            var h = [], i = $('#form-store :input[name^="qualification"]');
            if ($.each(i, function (a, b) {
                h.push(b.value)
            }), 1 == b.qualification_verify_status && !h[0]) return $.toast(language.translation("请上传营业执照照片")), !1;
            c.addClass("disabled");
            var j = {title: d, address: e, telephone: f, content: g, qualification: h};
            $.post(a.getUrl("wmall/store/settle/store"), j, function (b) {
                var d = $.parseJSON(b);
                return 0 != d.message.errno ? (c.removeClass("disabled"), $.toast(d.message.message), !1) : ($.toast(language.translation("申请成功,跳转中..."), a.getUrl("wmall/store/settle/store")), !1)
            })
        })
    }, b
});
