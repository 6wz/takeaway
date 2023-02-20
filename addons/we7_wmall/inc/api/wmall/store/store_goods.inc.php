<?php
/**
 * 外送系统
 * @
 * @QQ 572912540
 * @url http://w.4tiaomao.com/
 */
defined('IN_IA') or exit('Access Denied');
global $_W, $_GPC;
mload()->model('goods');

$sid = intval($_GPC['id']) ? intval($_GPC['id']) : 3;
$store = store_fetch($sid);
if(empty($store) || is_error($store)) {
	ijson(error(-1, '门店不存在或已删除'));
}
$goods = goods_avaliable_fetchall($sid);
$result = array(
	'store' => $store,
	'category' => $goods['category'],
	'goods' => $goods['goods'],
	'cate_goods' => $goods['cate_goods'],
	'bargains' => $goods['bargains'],
);
ijson(error(0, $result));

