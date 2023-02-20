<?php
/**
 * 外送系统
 * @
 * @QQ 572912540
 * @url http://w.4tiaomao.com/
 */
defined('IN_IA') or exit('Access Denied');
global $_W, $_GPC;
mload()->model('order');

$id = intval($_GPC['id']) ? intval($_GPC['id']) : '142';
$result = order_status_update($id, 'cancel');
if(is_error($result)) {
	ijson(error(-1, "处理编号为:{$id} 的订单失败，具体原因：{$result['message']}"));
	return;
}
if($result['message']['is_refund']) {
	$refund = order_begin_payrefund($id);
	if(is_error($refund)) {
		ijson(error(-1, $refund['message'])) ;
		return;
	}
	ijson(error(0, "取消订单成功,{$refund['message']}"));
	return;
} else {
	ijson(error(0,'取消订单成功'));
	return;
}

