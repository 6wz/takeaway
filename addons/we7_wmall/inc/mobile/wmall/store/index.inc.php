<?php
defined("IN_IA") or exit( "Access Denied" );
global $_W;
global $_GPC;
$_W["page"]["title"] = language("商户详情");
icheckauth(false);
$id = $sid = intval($_GPC["sid"]);
$store = store_fetch($id);
$store = chooseLanguageData($store , ['title'  , 'content' , 'description' , 'address' , 'notice' ,'tips' ,'delivery_area' ,'order_note' , 'service_titles' , 'cn' , 'custom_url' , 'remind_replay' , 'comment_reply' ]) ;
if(!empty($store['custom_url'])) {
    $store['custom_url'] = chooseLanguageData($store['custom_url'] , ['title']) ;
}

$is_favorite = pdo_get("tiny_wmall_store_favorite", array( "uniacid" => $_W["uniacid"], "uid" => $_W["member"]["uid"], "sid" => $sid ));
if( 0 < $_W["member"]["uid"] )
{
    $is_favorite = pdo_get("tiny_wmall_store_favorite", array( "uniacid" => $_W["uniacid"], "uid" => $_W["member"]["uid"], "sid" => $id ));
}

$activity = store_fetch_activity($sid);

$_share = array( "title" => $store["title"], "desc" => $store["content"], "imgUrl" => tomedia($store["logo"]), "link" => imurl("wmall/store/share", array( "sid" => $sid ), true) );
include(itemplate("store/index"));

