define(["tiny","language"], function (a , language) {
    var b = {};
    return b.initFavorite = function () {
        $(document).on("click", "#btn-favorite", function () {
            var b = $(this), c = $(this).data("id");
            if (!c) return !1;
            var d = "star";
            $(this).find("i").hasClass("icon-favorfill") && (d = "cancel"), $.post(a.getUrl("wmall/member/op/favorite"), {
                id: c,
                type: d
            }, function (a) {
                var c = $.parseJSON(a);
                return 0 != c.message.errno ? $.toast(c.message.message, c.message.url) : "cancel" == d ? (b.find("i").removeClass("icon-favorfill").addClass("icon-favor"), $.toast(language.translation("取消收藏成功"))) : (b.find("i").addClass("icon-favorfill").removeClass("icon-favor"), $.toast(language.translation("添加收藏成功"))), !1
            })
        })
    }, b
});
