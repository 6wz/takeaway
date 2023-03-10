define(["tiny" ,"language"], function (a , language) {
    var b = {selected: 0, data: {}, cart: {list: ""}};
    return b.init = function (a) {
        window.tmodtpl = a.tmodtpl, b.attachurl = a.attachurl, b.data = a.categorys, b.cart = a.cart, b.store = a.store, tmodtpl.helper("tomedia", function (a) {
            return "string" != typeof a ? "" : 0 == a.indexOf("http://") || 0 == a.indexOf("https://") || 0 == a.indexOf("../addons") ? a : 0 == a.indexOf("images/") ? b.attachurl + a : void 0
        }), b.initCateMenu(), b.initClick(), b.initTitle(), b.initGoods()
    }, b.initCateMenu = function () {
        var a = tmodtpl("tpl-parent-category", b);
        $("#cateMenu").html(a)
    }, b.initClick = function () {
        $(document).off("click", "#cateMenu li"), $(document).on("click", "#cateMenu li", function () {
            var a = $(this).data("index");
            a != b.selected && (b.selected = parseInt(a), b.initCateMenu(), b.initTitle(), b.initGoods())
        }), $(document).on("click", ".goods-popup", function () {
            var c = $(this).data("id");
            $.showIndicator(), $.post(a.getUrl("wmall/store/goods1/detail"), {id: c, sid: b.store.id}, function (a) {
                if (0 != a.message.errno) $.toast(a.message.message); else {
                    b.detail = a.message.message;
                    var c = tmodtpl("goods-detail", b);
                    $.popup(c), $(".swiper-container").swiper({autoplay: 1e3})
                }
                return $.hideIndicator(), !1
            }, "json")
        }), $(document).off("click", ".icon-plus"), $(document).on("click", ".icon-plus", function () {
            var a = $(this).data("goods-id"), c = $(this).data("option-id");
            b.updateCart(a, c, 2)
        })
    }, b.initTitle = function () {
        var a = b.selected, c = b.data[a];
        c && ($("#title").text(c.title || ''), c.min_fee > 0 ? $("#min_fee").text(language.translation("最低消费") + ": ￥" +c.min_fee ).show() : $("#min_fee").hide())
    }, b.initGoods = function () {
        var a = b.selected, c = b.data[a];
        if (!c) return b.initCateMenu(), b.initTitle(), void b.initGoods();
        c.data && c.data.length > 0 ? b.showGoods() : b.getGoods()
    }, b.showGoods = function () {
        var a = b.selected;
        if (b.data[a] && ($(".children-category-wrapper ul").empty(), b.data[a].goods)) {
            $(".goods-list-empty").hide();
            var c = tmodtpl("tpl-category-goods", b);
            $(".children-category-wrapper ul").html(c)
        }
    }, b.getGoods = function () {
        var c = b.selected, d = b.data[c];
        if (d.empty) return $(".goods-list-empty").show(), void $(".children-category-wrapper ul").empty();
        $.showIndicator();
        var e = {cateid: d.id, sid: b.store.id};
        $.post(a.getUrl("wmall/store/goods1/goods"), e, function (a) {
            a.message.errno || (a.message.message.total <= 0 ? (b.data[c].empty = 1, $(".goods-list-empty").show()) : (b.data[c].goods = a.message.message.goods, b.data.cart = a.message.message.cart), $.hideIndicator(), b.showGoods())
        }, "json")
    }, b.updateCart = function (c, d, e) {
        e < 0 && (e = 0);
        var f = {sid: b.store.id, goodsid: c, optionid: d, num: e};
        $.post(a.getUrl("wmall/store/goods1/updateCart"), f, function (a) {
        }, "json")
    }, b
});
