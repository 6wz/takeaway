<?php
defined("IN_IA") or exit( "Access Denied" );
global $_W;
global $_GPC;
$_W["page"]["title"] = language("为您优选");
$ta = (trim($_GPC["ta"]) ? trim($_GPC["ta"]) : "list");
if( $ta == "list" )
{
    $selective_image = $_W["we7_wmall"]["config"]["selective"]["image"];
    $condition = " where uniacid = :uniacid and agentid = :agentid and is_recommend = 1 and status = 1 order by is_rest asc, position desc, displayorder desc";
    $stores = pdo_fetchall("select id,title,logo,send_price,pack_price,delivery_fee_mode,delivery_price,delivery_areas from" . tablename("tiny_wmall_store") . $condition, array( ":uniacid" => $_W["uniacid"], ":agentid" => $_W["agentid"] ), "id");
    if( !empty($stores) )
    {
        $store_ids = implode(",", array_keys($stores));
        $goods = pdo_fetchall("select id,sid,title,price,thumb from " . tablename("tiny_wmall_goods") . " where uniacid = :uniacid and is_hot = 1 and sid in(" . $store_ids . ") order by displayorder desc", array( ":uniacid" => $_W["uniacid"] ));
        $goods_group = array(  );
        if( !empty($goods) )
        {
            foreach( $goods as $row )
            {
                if( count($goods_group[$row["sid"]]) < 3 )
                {
                    $goods_group[$row["sid"]][] = $row;
                }

            }
        }

        foreach( $stores as &$v )
        {
            $v["goods"] = $goods_group[$v["id"]];
            $v["activity"] = store_fetch_activity($v["id"], array( "discount" ));
            if( $v["delivery_fee_mode"] == 2 )
            {
                $v["delivery_price"] = iunserializer($v["delivery_price"]);
                $v["delivery_price"] = $v["delivery_price"]["start_fee"];
            }
            else
            {
                if( $v["delivery_fee_mode"] == 3 )
                {
                    $v["delivery_areas"] = iunserializer($v["delivery_areas"]);
                    if( !is_array($v["delivery_areas"]) )
                    {
                        $v["delivery_areas"] = array(  );
                    }

                    $price = store_order_condition($v);
                    $v["delivery_price"] = $price["delivery_price"];
                    $v["send_price"] = $price["send_price"];
                }

            }

        }
    }

}

if( $ta == "more" )
{
    $condition = " where uniacid = :uniacid and agentid = :agentid and is_recommend = 1 and status = 1 order by is_rest asc, position desc, displayorder desc";
    $stores = pdo_fetchall("select id,logo from" . tablename("tiny_wmall_store") . $condition, array( ":uniacid" => $_W["uniacid"], ":agentid" => $_W["agentid"] ));
}

include(itemplate("channel/brand"));

