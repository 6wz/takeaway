<?php
defined("IN_IA") or exit( "Access Denied" );
global $_W;
global $_GPC;
$ta = (trim($_GPC["ta"]) ? trim($_GPC["ta"]) : "list");
icheckauth();
if( $ta == "list" )
{
    $_W["page"]["title"] = language("我的足迹");
    $time = TIMESTAMP - 7776000;
    pdo_query("delete from " . tablename("tiny_wmall_member_footmark") . " where uniacid = :uniacid and addtime < :time", array( ":uniacid" => $_W["uniacid"], ":time" => $time ));
    $footmarks = pdo_fetchall("select * from " . tablename("tiny_wmall_member_footmark") . " where uniacid = :uniacid and uid = :uid group by stat_day order by stat_day desc", array( ":uniacid" => $_W["uniacid"], ":uid" => $_W["member"]["uid"] ));
    if( !empty($footmarks) )
    {
        foreach( $footmarks as &$val )
        {
            $val["date"] = date("m-d", $val["addtime"]);
            if( $val["stat_day"] == date("Ymd") )
            {
                $val["date"] = language("今天");
            }
            else
            {
                if( $val["stat_day"] == date("Ymd") - 1 )
                {
                    $val["date"] = language("昨天");
                }

            }

            $val["marks"] = pdo_getall("tiny_wmall_member_footmark", array( "uniacid" => $_W["uniacid"], "uid" => $_W["member"]["uid"], "stat_day" => $val["stat_day"] ), array( "id", "sid" ));
        }
    }

    $stores = pdo_fetchall("select id,score,title,logo,sailed,score,label,is_rest,business_hours,is_in_business,delivery_fee_mode,delivery_price,delivery_free_price,send_price,delivery_time,delivery_mode,token_status,invoice_status,location_x,location_y,forward_mode,forward_url,displayorder,click from " . tablename("tiny_wmall_store") . " where uniacid = :uniacid and agentid = :agentid", array( ":uniacid" => $_W["uniacid"], ":agentid" => $_W["agentid"] ), "id");
    if( !empty($stores) )
    {
        $store_label = category_store_label();
        foreach( $stores as $key => &$row )
        {
            $row["logo"] = tomedia($row["logo"]);
            $row["hot_goods"] = pdo_fetchall("select title from " . tablename("tiny_wmall_goods") . " where uniacid = :uniacid and sid = :sid and is_hot = 1 limit 3", array( ":uniacid" => $_W["uniacid"], ":sid" => $row["id"] ));
            $row["activity"] = store_fetch_activity($row["id"]);
            $row["activity"]["num"] += (0 < $row["delivery_free_price"] ? 1 : 0);
            $row["score_cn"] = round($row["score"] / 5, 2) * 100;
            $row["url"] = store_forward_url($row["id"], $row["forward_mode"], $row["forward_url"]);
            if( 0 < $row["label"] )
            {
                $row["label_color"] = $store_label[$row["label"]]["color"];
                $row["label_cn"] = $store_label[$row["label"]]["title"];
            }

            if( $row["delivery_fee_mode"] == 2 )
            {
                $row["delivery_price"] = iunserializer($row["delivery_price"]);
                $row["delivery_price"] = $row["delivery_price"]["start_fee"];
            }
            else
            {
                if( $row["delivery_fee_mode"] == 3 )
                {
                    $row["delivery_areas"] = iunserializer($row["delivery_areas"]);
                    if( !is_array($row["delivery_areas"]) )
                    {
                        $row["delivery_areas"] = array(  );
                    }

                    $price = store_order_condition($row, array( $lng, $lat ));
                    $row["delivery_price"] = $price["delivery_price"];
                    $row["send_price"] = $price["send_price"];
                }

            }

        }
    }

}

if( $ta == "del" )
{
    $ids = $_GPC["ids"];
    if( !is_array($ids) )
    {
        $ids = array( $ids );
    }

    foreach( $ids as $id )
    {
        pdo_delete("tiny_wmall_member_footmark", array( "uniacid" => $_W["uniacid"], "id" => $id ));
    }
    imessage(error(0, language("删除足迹成功")), "", "ajax");
}

include(itemplate("home/footmark"));

