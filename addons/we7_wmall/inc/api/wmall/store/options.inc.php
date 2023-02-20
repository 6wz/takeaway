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

$goods_id = intval($_GPC['id']) ? intval($_GPC['id']) : 9755;
$goods = goods_fetch($goods_id);
if(empty($goods)) {
	ijson(error(-1, '商品不存在或已删除'));
}
$goods['options_data'] = goods_build_options($goods);
ijson(error(0, $goods));


