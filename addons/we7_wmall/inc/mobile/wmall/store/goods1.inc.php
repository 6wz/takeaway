<?php 
defined("IN_IA") or exit( "Access Denied" );
global $_W;
global $_GPC;
mload()->model("goods");
icheckauth();
$_W["page"]["title"] = language("商品列表");
$sid = intval($_GPC["sid"]);
$store = store_fetch($sid);
if( empty($store) ) 
{
    imessage(language("门店不存在或已经删除"), referer(), "error");
}

mload()->model("activity");
activity_store_cron($sid);
$_share = array( "title" => $store["title"], "desc" => $store["content"], "imgUrl" => tomedia($store["logo"]), "link" => imurl("wmall/store/share", array( "sid" => $sid ), true) );
$footmark = pdo_get("tiny_wmall_member_footmark", array( "uniacid" => $_W["uniacid"], "uid" => $_W["member"]["uid"], "sid" => $sid, "stat_day" => date("Ymd") ), array( "id" ));
if( empty($footmark) ) 
{
    $insert = array( "uniacid" => $_W["uniacid"], "agentid" => $_W["agentid"], "uid" => $_W["member"]["uid"], "sid" => $sid, "addtime" => TIMESTAMP, "stat_day" => date("Ymd") );
    pdo_insert("tiny_wmall_member_footmark", $insert);
}

$ta = (trim($_GPC["ta"]) ? trim($_GPC["ta"]) : $store["template"]);
if( $_GPC["from"] == "search" ) 
{
    pdo_query("update " . tablename("tiny_wmall_store") . " set click = click + 1 where uniacid = :uniacid and id = :id", array( ":uniacid" => $_W["uniacid"], ":id" => $sid ));
}

if( 0 < $_GPC["address_id"] ) 
{
    isetcookie("__aid", $_GPC["address_id"], 180);
}

$price = store_order_condition($store);
$store["send_price"] = $price["send_price"];
if( $ta == "index" ) 
{
    $title = (string) $store["title"] . "-".language('商品列表');
    $activity = store_fetch_activity($sid);
    $is_favorite = pdo_get("tiny_wmall_store_favorite", array( "uniacid" => $_W["uniacid"], "uid" => $_W["member"]["uid"], "sid" => $sid ));
    $result = goods_avaliable_fetchall($sid);
    $categorys = $result["category"];
    $cate_goods = $result["cate_goods"];
    $goods = $result["goods"];
    $bargains = $result["bargains"];
    $categorys_limit_status = 0;
    $categorys_limit = array(  );
    foreach( $categorys as $row ) 
    {
        if( 0 < $row["min_fee"] ) 
        {
            $categorys_limit_status = 1;
            $row["fee"] = 0;
            $categorys_limit[$row["id"]] = $row;
        }

    }
    $categorys_index = array_keys($categorys_limit);
    mload()->model("coupon");
    $tokens = coupon_collect_member_available($sid);
    if( !empty($tokens) ) 
    {
        $token_nums = $tokens["num"];
        $token_price = $tokens["price"];
        $token = $tokens["coupons"][0];
    }

    if( !$_GPC["f"] ) 
    {
        $cart = order_fetch_member_cart($sid);
    }
    else
    {
        $cart = order_place_again($sid, $_GPC["id"]);
        if( empty($cart) ) 
        {
            $cart = order_fetch_member_cart($sid);
        }

    }

    include(itemplate("store/goodsIndex1"));
}

if( $ta == "goods" && $_W["ispost"] ) 
{
    $cateid = trim($_GPC["cateid"]);
    $page = intval($_GPC["page"]);
    $result = goods_avaliable_fetchall($sid, $cateid);
    $cart = pdo_get("tiny_wmall_order_cart", array( "uniacid" => $_W["uniacid"], "uid" => $_W["member"]["uid"] ), array( "data" ));
    $cart["data"] = iunserializer($cart["data"]);
    $cart["total"] = 0;
    if( !empty($cart["data"]) ) 
    {
        foreach( $cart["data"] as $val ) 
        {
            $cart["total"] += $val[0]["num"];
        }
    }

    $data = array( "goods" => $result["cate_goods"][$cateid], "total" => count($result["cate_goods"][$cateid]), "cart" => $cart );
    imessage(error(0, $data), "", "ajax");
}

if( $ta == "getCart" ) 
{
    $cart = order_fetch_member_cart($sid);
}

if( $ta == "updateCart" ) 
{
    $sid = intval($_GPC["sid"]);
    $goodsid = intval($_GPC["goodsid"]);
    $optionid = trim($_GPC["optionid"]);
    $cart = order_fetch_member_cart($sid);
    if( empty($cart) ) 
    {
        $goods = goods_fetch($goodsid);
    }

}

if( $ta == "index1" ) 
{
    $title = (string) $store["title"] . "-".language('商品列表');
    $activity = store_fetch_activity($sid);
    $is_favorite = pdo_get("tiny_wmall_store_favorite", array( "uniacid" => $_W["uniacid"], "uid" => $_W["member"]["uid"], "sid" => $sid ));
    $result = goods_avaliable_fetchall($sid);
    $categorys = $result["category"];
    $cate_goods = $result["cate_goods"];
    $goods = $result["goods"];
    $bargains = $result["bargains"];
    $categorys_limit_status = 0;
    $categorys_limit = array(  );
    foreach( $categorys as $row ) 
    {
        if( 0 < $row["min_fee"] ) 
        {
            $categorys_limit_status = 1;
            $row["fee"] = 0;
            $categorys_limit[$row["id"]] = $row;
        }

    }
    $categorys_index = array_keys($categorys_limit);
    mload()->model("coupon");
    $tokens = coupon_collect_member_available($sid);
    if( !empty($tokens) ) 
    {
        $token_nums = $tokens["num"];
        $token_price = $tokens["price"];
        $token = $tokens["coupons"][0];
    }

    if( !$_GPC["f"] ) 
    {
        $cart = order_fetch_member_cart($sid);
    }
    else
    {
        $cart = order_place_again($sid, $_GPC["id"]);
        if( empty($cart) ) 
        {
            $cart = order_fetch_member_cart($sid);
        }

    }

    include(itemplate("store/goodsNewIndex"));
}

if( $ta == "market" ) 
{
    $title = language("商品列表");
    $activity = store_fetch_activity($sid);
    $is_favorite = pdo_get("tiny_wmall_store_favorite", array( "uniacid" => $_W["uniacid"], "uid" => $_W["member"]["uid"], "sid" => $sid ));
    $result = goods_avaliable_fetchall($sid);
    $categorys = $result["category"];
    $cate_goods = $result["cate_goods"];
    $goods = $result["goods"];
    $bargains = $result["bargains"];
    $categorys_limit_status = 0;
    $categorys_limit = array(  );
    foreach( $categorys as $row ) 
    {
        if( 0 < $row["min_fee"] ) 
        {
            $categorys_limit_status = 1;
            $row["fee"] = 0;
            $categorys_limit[$row["id"]] = $row;
        }

    }
    $categorys_index = array_keys($categorys_limit);
    mload()->model("coupon");
    $tokens = coupon_collect_member_available($sid);
    if( !empty($tokens) ) 
    {
        $token_nums = $tokens["num"];
        $token_price = $tokens["price"];
        $token = $tokens["coupons"][0];
    }

    if( !$_GPC["f"] ) 
    {
        $cart = order_fetch_member_cart($sid);
    }
    else
    {
        $cart = order_place_again($sid, $_GPC["id"]);
        if( empty($cart) ) 
        {
            $cart = order_fetch_member_cart($sid);
        }

    }

    $cart["data"] = (array) $cart["data"];
    include(itemplate("store/goodsMarket"));
}

if( $ta == "cate" ) 
{
    $cart = order_fetch_member_cart($sid);
    $cid = trim($_GPC["cid"]);
    $result = goods_avaliable_fetchall($sid, $cid);
    $categorys = $result["category"];
    $cate_goods = $result["cate_goods"];
    $goods = $result["goods"];
    $bargains = $result["bargains"];
    $total = count($cate_goods[$cid]);
    $categorys_limit_status = 0;
    $categorys_limit = array(  );
    foreach( $categorys as $row ) 
    {
        if( 0 < $row["min_fee"] ) 
        {
            $categorys_limit_status = 1;
            $row["fee"] = 0;
            $categorys_limit[$row["id"]] = $row;
        }

    }
    $categorys_index = array_keys($categorys_limit);
    include(itemplate("store/goodsMarketCate"));
}

if( $ta == "detail" ) 
{
    if( !$_W["isajax"] ) 
    {
        message(error(-1, language("非法访问")), "", "ajax");
    }

    $id = intval($_GPC["id"]);
    $goods = goods_fetch($id);
    if( is_error($goods) ) 
    {
        message(error(-1, language("商品不存在或已删除")), "", "ajax");
    }

    if( !$goods["comment_total"] ) 
    {
        $goods["comment_good_percent"] = "0%";
    }
    else
    {
        $goods["comment_good_percent"] = round($goods["comment_good"] / $goods["comment_total"] * 100, 2) . "%";
    }

    message(error(0, $goods), "", "ajax");
}

if( $ta == "cart_truncate" ) 
{
    if( !$_W["isajax"] ) 
    {
        message(error(-1, language("非法访问")), "", "ajax");
    }

    $data = pdo_delete("tiny_wmall_order_cart", array( "uniacid" => $_W["uniacid"], "sid" => $sid, "uid" => $_W["member"]["uid"] ));
    message(error(0, ""), "", "ajax");
}

if( $ta == "cart" && $_W["isajax"] ) 
{
    $cart = order_insert_member_cart($sid);
    exit();
}

if( $ta == "search" ) 
{
    if( !$_W["isajax"] ) 
    {
        message(error(-1, language("非法访问")), "", "ajax");
    }

    $key = trim($_GPC["key"]);
    if( empty($key) ) 
    {
        message(error(-1, language("关键词不能为空")), "", "ajax");
    }

    $goods = pdo_fetchall("select * from " . tablename("tiny_wmall_goods") . " where uniacid = :uniacid and sid = :sid and status = 1 and title like :title", array( ":uniacid" => $_W["uniacid"], ":sid" => $sid, ":title" => "%" . $key . "%" ));
    if( !empty($goods) ) 
    {
        foreach( $goods as &$good ) 
        {
            $good["thumb_cn"] = tomedia($good["thumb"]);
            $good["is_in_business_hours"] = $store["is_in_business_hours"];
            if( $good["is_options"] ) 
            {
                $good["options"] = pdo_getall("tiny_wmall_goods_options", array( "uniacid" => $_W["uniacid"], "goods_id" => $good["id"] ));
            }

            $good["is_attrs"] = 0;
            $good["attrs"] = iunserializer($good["attrs"]);
            if( !empty($good["attrs"]) ) 
            {
                $good["attrs"] = 1;
            }

        }
    }

    message(error(0, $goods), "", "ajax");
}


