<?php

function gohome_goods_sync($type = 'kanjia')
{
	global $_W;
	$routers = array('kanjia' => 'tiny_wmall_kanjia', 'pintuan' => 'tiny_wmall_pintuan_goods', 'seckill' => 'tiny_wmall_seckill_goods');
	$table = $routers[$type];
	pdo_query('update ' . tablename($table) . ' set status = 1 where uniacid = :uniacid and status > 0 and starttime < :starttime and endtime > :endtime', array(':uniacid' => $_W['uniacid'], ':starttime' => TIMESTAMP, ':endtime' => TIMESTAMP));
	pdo_query('update ' . tablename($table) . ' set status = 2 where uniacid = :uniacid and status > 0 and starttime > :starttime', array(':uniacid' => $_W['uniacid'], ':starttime' => TIMESTAMP));
	pdo_query('update ' . tablename($table) . ' set status = 3 where uniacid = :uniacid and status > 0 and endtime < :endtime', array(':uniacid' => $_W['uniacid'], ':endtime' => TIMESTAMP));
	return true;
}

function gohome_goods_total_update($order, $scene)
{
	$routers = array('kanjia' => 'tiny_wmall_kanjia', 'pintuan' => 'tiny_wmall_pintuan_goods', 'seckill' => 'tiny_wmall_seckill_goods');
	$table = $routers[$order['order_type']];
	pdo_query('update ' . tablename($table) . (' set total = total - ' . $order['num'] . ' where uniacid = :uniacid and id = :id and total > 0 and total_update_type = :total_update_type'), array(':uniacid' => $order['uniacid'], ':id' => $order['goods_id'], ':total_update_type' => $scene));
	return true;
}

function gohome_order_fetch($id, $oauth = false)
{
	global $_W;
	$id = intval($id);
	$condition = ' where uniacid = :uniacid and id = :id';
	$params = array(':uniacid' => $_W['uniacid'], ':id' => $id);

	if ($oauth) {
		$condition .= ' and uid = :uid';
		$params[':uid'] = $_W['member']['uid'];
	}

	$order = pdo_fetch('select * from ' . tablename('tiny_wmall_gohome_order') . $condition, $params);

	if (empty($order)) {
		return false;
	}

	$order['addtime_cn'] = date('Y-m-d H:i:s', $order['addtime']);
	$order['paytime_cn'] = date('Y-m-d H:i:s', $order['paytime']);
	$pay_types = order_pay_types();

	if (empty($order['is_pay'])) {
		$order['pay_type_cn'] = '?????????';
	}
	else {
		$order['pay_type_cn'] = !empty($pay_types[$order['pay_type']]['text']) ? $pay_types[$order['pay_type']]['text'] : '??????????????????';
	}

	$order['order_type_all'] = gohome_order_types($order['order_type'], 'all');
	$order['order_type_cn'] = $order['order_type_all']['text'];
	$order['status_cn'] = gohome_order_status($order['status'], 'text');
	$order['goods'] = gohome_order_goods($order['goods_id'], $order['order_type']);
	$order['store'] = store_fetch($order['sid'], array('title', 'logo', 'telephone', 'address', 'push_token'));
	$order['plateform_serve'] = iunserializer($order['plateform_serve']);
	$order['agent_serve'] = iunserializer($order['agent_serve']);
	return $order;
}

function gohome_order_goods($goods_id, $order_type)
{
	global $_W;

	if (!in_array($order_type, array('kanjia', 'pintuan', 'seckill'))) {
		return false;
	}

	$goods_id = intval($goods_id);
	$table = array('kanjia' => 'tiny_wmall_kanjia', 'pintuan' => 'tiny_wmall_pintuan_goods', 'seckill' => 'tiny_wmall_seckill_goods');
	$tablename = $table[$order_type];
	$goods = pdo_get($tablename, array('uniacid' => $_W['uniacid'], 'id' => $goods_id));

	if (!empty($goods)) {
		$goods['thumb'] = tomedia($goods['thumb']);
		$serializer = array('thumbs', 'rules', 'share');

		foreach ($serializer as $ser) {
			if (!empty($goods[$ser])) {
				$goods[$ser] = iunserializer($goods[$ser]);
			}
		}

		$float = array('oldprice', 'price', 'vipprice', 'submitmoneylimit', 'alongprice', 'grouptime');

		foreach ($float as $flo) {
			if (!empty($goods[$flo])) {
				$goods[$flo] = floatval($goods[$flo]);
			}
		}

		$goods['starttime_cn'] = date('Y-m-d H:i:s', $goods['starttime']);
		$goods['endtime_cn'] = date('Y-m-d H:i:s', $goods['endtime']);
	}

	return $goods;
}

function gohome_goods_fetchall()
{
	global $_W;
	$goods_all = array();
	$table = array('kanjia' => 'tiny_wmall_kanjia', 'pintuan' => 'tiny_wmall_pintuan_goods', 'seckill' => 'tiny_wmall_seckill_goods');
	$serializer = array('thumbs', 'rules', 'share');
	$float = array('oldprice', 'price', 'vipprice', 'submitmoneylimit', 'alongprice', 'grouptime');
	$condition = ' where uniacid = :uniacid and agentid = :agentid';
	$params = array(':uniacid' => $_W['uniacid'], ':agentid' => $_W['agentid']);

	foreach ($table as $key => $value) {
		$data = pdo_fetchall('select * from ' . tablename($value) . $condition, $params, 'id');

		if (!empty($data)) {
			foreach ($data as &$goods) {
				$goods['thumb'] = tomedia($goods['thumb']);

				foreach ($serializer as $ser) {
					if (!empty($goods[$ser])) {
						$goods[$ser] = iunserializer($goods[$ser]);
					}
				}

				foreach ($float as $flo) {
					if (!empty($goods[$flo])) {
						$goods[$flo] = floatval($goods[$flo]);
					}
				}

				$goods['starttime_cn'] = date('Y-m-d H:i:s', $goods['starttime']);
				$goods['endtime_cn'] = date('Y-m-d H:i:s', $goods['endtime']);
			}
		}

		$goods_all[$key] = $data;
	}

	return $goods_all;
}

function gohome_order_fetchall($filter = array())
{
	global $_W;
	global $_GPC;

	if (empty($filter)) {
		$filter = $_GPC;
	}

	$condition = ' where uniacid = :uniacid';
	$params = array(':uniacid' => $_W['uniacid']);
	$agentid = intval($filter['agentid']) ? intval($filter['agentid']) : $_W['agentid'];

	if (0 < $agentid) {
		$condition .= ' and agentid = :agentid';
		$params[':agentid'] = $agentid;
	}

	$sid = intval($filter['sid']);

	if (0 < $sid) {
		$condition .= ' and sid = :sid';
		$params[':sid'] = $sid;
	}

	$uid = intval($filter['uid']);

	if (0 < $uid) {
		$condition .= ' and uid = :uid';
		$params[':uid'] = $uid;
	}

	$order_type = trim($filter['order_type']);

	if (in_array($order_type, array('kanjia', 'pintuan', 'seckill'))) {
		$condition .= ' and order_type = :order_type';
		$params[':order_type'] = $order_type;
	}

	$is_pay = isset($filter['is_pay']) ? intval($filter['is_pay']) : -1;

	if (-1 < $is_pay) {
		$condition .= ' and is_pay = :is_pay';
		$params[':is_pay'] = $is_pay;
	}

	$pay_type = trim($filter['pay_type']);

	if (!empty($pay_type)) {
		$condition .= ' and pay_type = :pay_type';
		$params[':pay_type'] = $pay_type;
	}

	$refund_status = intval($filter['refund_status']);

	if (0 < $refund_status) {
		$condition .= ' and refund_status = :refund_status';
		$params[':refund_status'] = $refund_status;
		$filter['status'] = 7;
	}

	$status = intval($filter['status']);

	if (0 < $status) {
		$condition .= ' and status = :status';
		$params[':status'] = $status;
	}

	if (!empty($filter['starttime']) && !empty($filter['endtime'])) {
		$condition .= ' AND addtime > :start AND addtime < :end';
		$params[':start'] = $filter['starttime'];
		$params[':end'] = $filter['endtime'];
	}

	$keyword = trim($filter['keyword']);

	if (!empty($keyword)) {
		$condition .= ' and (mobile like :keyword or username like :keyword or ordersn like :keyword)';
		$params[':keyword'] = '%' . $keyword . '%';
	}

	$page = max(1, intval($_GPC['page']));
	$psize = intval($_GPC['psize']) ? intval($_GPC['psize']) : 15;
	$total = pdo_fetchcolumn('select count(*) from ' . tablename('tiny_wmall_gohome_order') . $condition, $params);
	$orders = pdo_fetchall('select * from ' . tablename('tiny_wmall_gohome_order') . $condition . ' order by id desc limit ' . ($page - 1) * $psize . ',' . $psize, $params);

	if (!empty($orders)) {
		$stores = store_fetchall(array('id', 'title', 'logo', 'telephone', 'address'));

		foreach ($orders as &$order) {
			$order['addtime_cn'] = date('Y-m-d H:i:s', $order['addtime']);

			if (0 < $order['paytime']) {
				$order['paytime_cn'] = date('Y-m-d H:i:s', $order['paytime']);
			}

			if ($order['applytime']) {
				$order['applytime_cn'] = date('Y-m-d H:i:s', $order['applytime']);
			}

			if (empty($order['is_pay'])) {
				$order['pay_type_all'] = array('text' => '?????????', 'css' => 'label label-default');
			}
			else {
				$order['pay_type_all'] = to_paytype($order['pay_type'], 'all');
			}

			$order['order_type_all'] = gohome_order_types($order['order_type'], 'all');
			$order['status_all'] = gohome_order_status($order['status'], 'all');
			$order['goods'] = gohome_order_goods($order['goods_id'], $order['order_type']);
			$order['store'] = $stores[$order['sid']];
		}
	}

	$pager = pagination($total, $page, $psize);
	return array('orders' => $orders, 'total' => $total, 'pager' => $pager);
}

function gohome_order_types($type, $key = 'all')
{
	$data = array(
		'kanjia'  => array('text' => '??????', 'css' => 'label label-danger'),
		'pintuan' => array('text' => '??????', 'css' => 'label label-info'),
		'seckill' => array('text' => '??????', 'css' => 'label label-warning')
		);

	if ($key == 'all') {
		return $data[$type];
	}

	if ($key == 'text') {
		return $data[$type]['text'];
	}

	if ($key == 'css') {
		return $data[$type]['css'];
	}
}

function gohome_order_status($type = '', $key = 'all')
{
	$data = array(
		1 => array('text' => '?????????', 'css' => 'label label-warning'),
		2 => array('text' => '?????????', 'css' => 'label label-warning'),
		3 => array('text' => '?????????', 'css' => 'label label-danger'),
		4 => array('text' => '?????????', 'css' => 'label label-danger'),
		5 => array('text' => '?????????', 'css' => 'label label-danger'),
		6 => array('text' => '?????????', 'css' => 'label label-success'),
		7 => array('text' => '?????????', 'css' => 'label label-default')
		);

	if (empty($type)) {
		return $data;
	}

	if ($key == 'all') {
		return $data[$type];
	}

	if ($key == 'text') {
		return $data[$type]['text'];
	}

	if ($key == 'css') {
		return $data[$type]['css'];
	}
}

function gohome_goods_status($type = -1, $key = 'all')
{
	$data = array(
		array('text' => '?????????', 'css' => 'label label-info'),
		array('text' => '?????????', 'css' => 'label label-success'),
		array('text' => '?????????', 'css' => 'label label-warning'),
		array('text' => '?????????', 'css' => 'label label-danger')
		);

	if ($type == -1) {
		return $data;
	}

	if ($key == 'all') {
		return $data[$type];
	}

	if ($key == 'text') {
		return $data[$type]['text'];
	}

	if ($key == 'css') {
		return $data[$type]['css'];
	}
}

function gohome_order_update($orderOrId, $type, $extra = array())
{
	global $_W;
	$order = $orderOrId;

	if (!is_array($order)) {
		$order = gohome_order_fetch($order);
	}

	if (empty($order)) {
		return error(-1, '??????????????????');
	}

	if ($order['order_type'] == 'kanjia') {
		mload()->model('plugin');
		pload()->model('kanjia');
		return kanjia_order_update($order, $type, $extra);
	}

	if ($order['order_type'] == 'pintuan') {
		mload()->model('plugin');
		pload()->model('pintuan');
		return pintuan_order_update($order, $type, $extra);
	}

	if ($order['order_type'] == 'seckill') {
		mload()->model('plugin');
		pload()->model('seckill');
		return seckill_order_update($order, $type, $extra);
	}
}

function gohome_order_update_bill($orderOrId)
{
	global $_W;
	$order = $orderOrId;

	if (!is_array($order)) {
		$order = gohome_order_fetch($order);
	}

	if (empty($order)) {
		return error(-1, '???????????????????????????');
	}

	$account = store_account($order['sid'], array('fee_gohome'));
	$account = $account['fee_gohome'];

	if (empty($account[$order['order_type']])) {
		$account = get_plugin_config('gohome.serve_fee');
	}

	$fee_config = $account[$order['order_type']];

	if ($fee_config['type'] == 2) {
		$plateform_serve_rate = 0;
		$platform_serve_fee = floatval($fee_config['fee']);
		$plateform_serve = array('fee_type' => 2, 'fee_rate' => 0, 'fee' => $platform_serve_fee, 'note' => '????????????' . $platform_serve_fee . '???');
	}
	else {
		$basic = 0;
		$note = array(
			'yes' => array(),
			'no'  => array()
			);
		$fee_items = store_serve_fee_items();

		if (!empty($fee_config['items_yes'])) {
			$fee_config['items_yes'] = array_unique($fee_config['items_yes']);

			foreach ($fee_config['items_yes'] as $item) {
				$basic += $order[$item];
				$note['yes'][] = $fee_items['yes'][$item] . ' ???' . $order[$item];
			}
		}

		if (!empty($fee_config['items_no'])) {
			$fee_config['items_no'] = array_unique($fee_config['items_no']);

			foreach ($fee_config['items_no'] as $item) {
				$basic -= $order[$item];
				$note['no'][] = $fee_items['no'][$item] . ' ???' . $order[$item];
			}
		}

		if ($basic < 0) {
			$basic = 0;
		}

		$plateform_serve_rate = $fee_config['fee_rate'];
		$platform_serve_fee = round($basic * ($plateform_serve_rate / 100), 2);
		$text = '(' . implode(' + ', $note['yes']);

		if (!empty($note['no'])) {
			$text .= ' - ' . implode(' - ', $note['no']);
		}

		$text .= ') x ' . $plateform_serve_rate . '%';
		if (0 < $fee_config['fee_min'] && $platform_serve_fee < $fee_config['fee_min']) {
			$platform_serve_fee = $fee_config['fee_min'];
			$text .= ' ?????????????????????????????????????????????????????????????????????';
		}

		$plateform_serve = array('fee_type' => 1, 'fee_rate' => $plateform_serve_rate, 'fee' => $platform_serve_fee, 'note' => $text);
	}

	$store_final_fee = $order['price'] - $order['discount_fee'] - $platform_serve_fee + $order['plateform_discount_fee'] + $order['agent_discount_fee'];

	if (0 < $order['agentid']) {
		mload()->model('agent');
		$account_agent = get_agent($order['agentid'], 'fee');
		$agent_fee_config = $account_agent['fee']['fee_gohome'];

		if (empty($agent_fee_config[$order['order_type']])) {
			$account_agent = get_plugin_config('agent.serve_fee');
			$agent_fee_config = $account_agent['fee_gohome'];
		}

		$agent_fee_config = $agent_fee_config[$order['order_type']];

		if ($agent_fee_config['type'] == 2) {
			$agent_serve_fee = floatval($agent_fee_config['fee']);
			$agent_serve = array('fee_type' => 2, 'fee_rate' => 0, 'fee' => $agent_serve_fee, 'note' => '????????????' . $agent_serve_fee . '???');
		}
		else if ($agent_fee_config['type'] == 1) {
			$basic = 0;
			$note = array(
				'yes' => array(),
				'no'  => array()
				);
			$fee_items = agent_serve_fee_items();

			if (!empty($agent_fee_config['items_yes'])) {
				foreach ($agent_fee_config['items_yes'] as $item) {
					$basic += $order[$item];
					$note['yes'][] = $fee_items['yes'][$item] . ' ???' . $order[$item];
				}
			}

			if (!empty($agent_fee_config['items_no'])) {
				foreach ($agent_fee_config['items_no'] as $item) {
					$basic -= $order[$item];
					$note['no'][] = $fee_items['no'][$item] . ' ???' . $order[$item];
				}
			}

			if ($basic < 0) {
				$basic = 0;
			}

			$agent_serve_rate = floatval($agent_fee_config['fee_rate']);
			$agent_serve_fee = round($basic * ($agent_serve_rate / 100), 2);
			$text = '(' . implode(' + ', $note['yes']);

			if (!empty($note['no'])) {
				$text .= ' - ' . implode(' - ', $note['no']);
			}

			$text .= ') x ' . $agent_serve_rate . '%';
			if (0 < $agent_fee_config['fee_min'] && $agent_serve_fee < $agent_fee_config['fee_min']) {
				$agent_serve_fee = $agent_fee_config['fee_min'];
				$text .= ' ?????????????????????????????????????????????????????????????????????';
			}

			$agent_serve = array('fee_type' => 1, 'fee_rate' => $agent_serve_rate, 'fee' => $agent_serve_fee, 'note' => $text);
		}
		else {
			if ($agent_fee_config['type'] == 3) {
				$agent_serve_rate = floatval($agent_fee_config['fee_rate']);
				$agent_serve_fee = round($platform_serve_fee * ($agent_serve_rate / 100), 2);
				$text = '?????????????????????' . $platform_serve_fee . ' x ' . $agent_serve_rate . '%';
				if (0 < $agent_fee_config['fee_min'] && $agent_serve_fee < $agent_fee_config['fee_min']) {
					$agent_serve_fee = $agent_fee_config['fee_min'];
					$text .= ' ?????????????????????????????????????????????????????????????????????';
				}

				$agent_serve = array('fee_type' => 3, 'fee_rate' => $agent_serve_rate, 'fee' => $agent_serve_fee, 'note' => $text);
			}
		}
	}

	$agent_final_fee = $platform_serve_fee - $agent_serve_fee - $order['agent_discount_fee'];
	$agent_serve['final'] = '(????????????????????? ???' . $platform_serve_fee . ' - ?????????????????? ???' . $agent_serve_fee . ' - ??????????????? ???' . $order['agent_discount_fee'] . ')';
	$data = array('agent_final_fee' => $agent_final_fee, 'agent_serve' => iserializer($agent_serve), 'agent_serve_fee' => $agent_serve_fee);
	$data['plateform_serve_fee'] = $platform_serve_fee;
	$data['plateform_serve'] = iserializer($plateform_serve);
	$data['store_final_fee'] = $store_final_fee;
	pdo_update('tiny_wmall_gohome_order', $data, array('uniacid' => $_W['uniacid'], 'id' => $order['id']));
	return true;
}

function gohome_update_activity_flow($activity_type, $goods_id, $type)
{
	global $_W;

	if (!in_array($type, array('looknum', 'sharenum'))) {
		return false;
	}

	$routers = array(
		'pintuan'   => array('table' => 'tiny_wmall_pintuan_goods'),
		'kanjia'    => array('table' => 'tiny_wmall_kanjia'),
		'seckill'   => array('table' => 'tiny_wmall_seckill_goods'),
		'tongcheng' => array('table' => 'tiny_wmall_tongcheng_information')
		);
	$router = $routers[$activity_type];
	pdo_query('UPDATE ' . tablename($router['table']) . (' set ' . $type . ' = ' . $type . ' + 1 WHERE uniacid = :uniacid AND id = :id'), array(':uniacid' => $_W['uniacid'], ':id' => $goods_id));
	return true;
}

function gohome_goods_favorite($goods_id, $type)
{
	global $_W;
	if (empty($goods_id) || !in_array($type, array('kanjia', 'pintuan', 'seckill'))) {
		return error(-1, '????????????');
	}

	mload()->model('plugin');
	pload()->model($type);
	$goods = array();

	if ($type == 'kanjia') {
		$goods = kanjia_get_activity($goods_id);
	}
	else if ($type == 'pintuan') {
		$goods = pintuan_get_activity($goods_id);
	}
	else {
		if ($type == 'seckill') {
			$goods = seckill_goods($goods_id);
		}
	}

	if (empty($goods)) {
		return error(-1, '???????????????');
	}

	$is_favor = gohome_goods_favorite_check($goods_id, $type);

	if (empty($is_favor)) {
		$insert = array('uniacid' => $_W['uniacid'], 'uid' => $_W['member']['uid'], 'sid' => $goods['sid'], 'goods_id' => $goods_id, 'type' => $type, 'addtime' => TIMESTAMP);
		pdo_insert('tiny_wmall_gohome_favorite', $insert);
		return error(0, '????????????');
	}

	pdo_delete('tiny_wmall_gohome_favorite', array('uniacid' => $_W['uniacid'], 'uid' => $_W['member']['uid'], 'goods_id' => $goods_id, 'type' => $type));
	return error(0, '???????????????');
}

function gohome_goods_favorite_check($goods_id, $type)
{
	global $_W;
	$favor = pdo_get('tiny_wmall_gohome_favorite', array('uniacid' => $_W['uniacid'], 'uid' => $_W['member']['uid'], 'goods_id' => $goods_id, 'type' => $type));

	if (!empty($favor)) {
		return true;
	}

	return false;
}

function gohome_favor_fetchall($filter = array())
{
	global $_W;
	global $_GPC;

	if (empty($filter)) {
		$filter = $_GPC;
	}

	$condition = ' where uniacid = :uniacid';
	$params = array(':uniacid' => $_W['uniacid']);
	$uid = intval($filter['uid']);

	if (0 < $uid) {
		$condition .= ' and uid = :uid';
		$params[':uid'] = $uid;
	}

	$sid = intval($filter['sid']);

	if (0 < $sid) {
		$condition .= ' and sid = :sid';
		$params[':sid'] = $sid;
	}

	$type = trim($filter['type']);

	if (in_array($type, array('kanjia', 'pintuan', 'seckill'))) {
		$condition .= ' and type = :type';
		$params[':type'] = $type;
	}

	$page = max(1, intval($_GPC['page']));
	$psize = intval($_GPC['psize']) ? intval($_GPC['psize']) : 15;
	$favors = pdo_fetchall('select * from ' . tablename('tiny_wmall_gohome_favorite') . $condition . ' order by id desc limit ' . ($page - 1) * $psize . ',' . $psize, $params);

	if (!empty($favors)) {
		$stores = store_fetchall(array('id', 'title', 'logo', 'telephone', 'address'));

		foreach ($favors as &$favor) {
			$favor['addtime_cn'] = date('Y-m-d H:i:s', $favor['addtime']);
			$favor['goods'] = gohome_order_goods($favor['goods_id'], $favor['type']);
			$favor['type_all'] = gohome_order_types($favor['type'], 'all');
			$favor['store'] = $stores[$favor['sid']];
		}
	}

	return $favors;
}

function gohome_order_begin_refund($orderOrid)
{
	global $_W;
	$order = $orderOrid;

	if (!is_array($order)) {
		$order = gohome_order_fetch($order);
	}

	if (empty($order)) {
		return error(-1, '???????????????????????????');
	}

	if ($order['refund_status'] == 2) {
		return error(-1, '?????????????????? ??????????????????');
	}

	if ($order['refund_status'] == 3) {
		return error(-1, '???????????????, ??????????????????');
	}

	if ($order['pay_type'] == 'credit') {
		if (0 < $order['uid']) {
			$log = array($order['uid'], $order['order_type_cn'] . '????????????, ?????????:' . $order['id'] . ', ????????????:' . $order['final_fee'] . '???', 'we7_wmall');
			mload()->model('member');
			member_credit_update($order['uid'], 'credit2', $order['final_fee'], $log);
			$update = array('refund_status' => 3, 'refund_success_time' => TIMESTAMP, 'refund_account' => '???????????????????????????', 'refund_channel' => 'ORIGINAL');
			pdo_update('tiny_wmall_gohome_order', $update, array('uniacid' => $_W['uniacid'], 'id' => $order['id']));
		}

		return error(0, '????????????,?????????????????????????????????????????????');
	}

	if ($order['pay_type'] == 'wechat') {
		mload()->classs('wxpay');
		$pay = new WxPay($order['order_channel']);
		$params = array('total_fee' => $order['final_fee'] * 100, 'refund_fee' => $order['final_fee'] * 100, 'out_trade_no' => $order['out_trade_no'], 'out_refund_no' => $order['refund_out_no']);
		$response = $pay->payRefund_build($params);

		if (is_error($response)) {
			return error(-1, $response['message']);
		}

		$update = array('refund_status' => 2);
		pdo_update('tiny_wmall_gohome_order', $update, array('uniacid' => $_W['uniacid'], 'id' => $order['id']));
		$query = gohome_order_query_payrefund($order['id']);
		return $query;
	}

	if ($order['pay_type'] == 'alipay') {
		mload()->classs('alipay');
		$pay = new AliPay($order['order_channel']);
		$params = array('refund_fee' => $order['final_fee'], 'out_trade_no' => $order['out_trade_no']);
		$response = $pay->payRefund_build($params);

		if (is_error($response)) {
			return error(-1, $response['message']);
		}

		$update = array('refund_status' => 3, 'refund_success_time' => TIMESTAMP, 'refund_account' => '???????????????????????????', 'refund_channel' => 'ORIGINAL');
		pdo_update('tiny_wmall_gohome_order', $update, array('uniacid' => $_W['uniacid'], 'id' => $order['id']));
		return error(0, '????????????,????????????????????????????????????????????????:' . $response['buyer_logon_id']);
	}

	if ($order['pay_type'] == 'yimafu') {
		$orderno = number_format($order['transaction_id'], 0, '', '');
		mload()->classs('yimafu');
		$pay = new YiMaFu();
		$response = $pay->payRefund_build($orderno);

		if (is_error($response)) {
			return error(-1, '????????????');
		}

		$update = array('refund_status' => 3, 'refund_success_time' => TIMESTAMP, 'refund_account' => '???????????????????????????', 'refund_channel' => 'ORIGINAL');
		pdo_update('tiny_wmall_gohome_order', $update, array('uniacid' => $_W['uniacid'], 'id' => $order['id']));
		return error(0, '????????????,?????????????????????????????????????????????');
	}

	if ($order['pay_type'] == 'qianfan') {
		$member = pdo_get('tiny_wmall_members', array('uid' => $order['uid']));

		if (empty($member['uid_qianfan'])) {
			return error(-1, '????????????uid??????');
		}

		mload()->model('plugin');
		pload()->model('qianfanApp');
		$status = qianfan_user_credit_add($member['uid_qianfan'], $order['final_fee']);

		if (is_error($status)) {
			return error(-1, '????????????:' . $status['message']);
		}

		$update = array('refund_status' => 3, 'refund_success_time' => TIMESTAMP, 'refund_account' => '???????????????????????????', 'refund_channel' => 'ORIGINAL');
		pdo_update('tiny_wmall_gohome_order', $update, array('uniacid' => $_W['uniacid'], 'id' => $order['id']));
		return error(0, '????????????,?????????????????????????????????APP????????????');
	}
}

function gohome_order_query_payrefund($orderId)
{
	global $_W;
	$order = gohome_order_fetch($orderId);

	if (empty($order)) {
		return error(-1, '???????????????????????????');
	}

	if ($order['refund_status'] != 2) {
		return error(-1, '???????????????');
	}

	if ($order['pay_type'] == 'wechat') {
		mload()->classs('wxpay');
		$pay = new WxPay($order['order_channel']);
		$response = $pay->payRefund_query(array('out_refund_no' => $order['refund_out_no']));

		if (is_error($response)) {
			return $response;
		}

		$wechat_status = $pay->payRefund_status();
		$update = array('refund_status' => $wechat_status[$response['refund_status_0']]['value']);

		if ($response['refund_status_0'] == 'SUCCESS') {
			$update['refund_channel'] = $response['refund_channel_0'];
			$update['refund_account'] = $response['refund_recv_accout_0'];
			$update['refund_success_time'] = TIMESTAMP;
			pdo_update('tiny_wmall_gohome_order', $update, array('uniacid' => $_W['uniacid'], 'id' => $order['id']));
			return error(0, '????????????,?????????????????????????????????????????????:' . $response['refund_recv_accout_0']);
		}

		pdo_update('tiny_wmall_gohome_order', $update, array('uniacid' => $_W['uniacid'], 'id' => $order['id']));
		return error(0, '???????????????, ???????????????????????????????????????????????????????????????????????????????????????20??????????????????????????????????????????3??????????????????????????????????????????');
	}

	return true;
}

function gohome_order_status_notice($orderOrId, $type, $extra = array())
{
	global $_W;
	$types = array('pay', 'cancel', 'confirm', 'team_success');

	if (!in_array($type, $types)) {
		return error(-1, '????????????');
	}

	$order = $orderOrId;

	if (!is_array($order)) {
		$order = gohome_order_fetch($order);
	}

	if (empty($order)) {
		return error(-1, '???????????????');
	}

	$store = $order['store'];
	$goods = $order['goods'];
	$config_wxapp_basic = $_W['we7_wmall']['config']['wxapp']['basic'];
	$order_channel = $order['order_channel'];

	if ($order_channel == 'wxapp') {
		if ($config_wxapp_basic['wxapp_consumer_notice_channel'] == 'wechat') {
			mload()->model('member');
			$order['openid'] = member_wxapp2openid($order['openid']);

			if (!empty($order['openid'])) {
				$order_channel = 'wechat';
			}
		}
	}

	$acc = TyAccount::create($order['uniacid'], $order_channel);

	if ($order_channel == 'wechat') {
		if ($type == 'pay') {
			$title = '?????????????????????';
			$remark = array('????????????: ' . $store['title'], '????????????: ' . $order['pay_type_cn'], '????????????: ' . $order['paytime_cn'], '????????????: ' . $goods['name'] . ' X ' . $order['num']);
			$order['status_cn'] = '?????????';
			$end_remark = '???????????????????????????????????????';
		}
		else if ($type == 'confirm') {
			$title = '???????????????';
			$remark = array('????????????: ' . $store['title'], '????????????: ' . $order['order_type_cn'] . '??????', '????????????: ' . date('Y-m-d H:i', $order['applytime']));
			$order['status_cn'] = '?????????';
			$end_remark = '?????????????????????, ????????????????????????????????????????????????:' . $_W['we7_wmall']['config']['mobile'] . ',?????????????????????.???????????????????????????????????????.';
		}
		else if ($type == 'cancel') {
			$title = '???????????????';
			$remark = array('????????????: ' . $store['title'], '????????????: ' . $order['order_type_cn'] . '??????', '????????????: ' . date('Y-m-d H:i', TIMESTAMP));
			$order['status_cn'] = '?????????';
		}
		else {
			if ($type == 'team_success') {
				$title = '???' . $goods['name'] . '??????????????????';
				$remark = array('????????????: ' . $store['title'], '????????????: ' . $order['order_type_cn'] . '??????', '????????????: ' . $goods['name']);
				$order['status_cn'] = '????????????';
			}
		}

		$note = trim($extra['note']);

		if (!empty($note)) {
			$remark[] = implode('
', $extra['note']);
		}

		if (!empty($end_remark)) {
			$remark[] = $end_remark;
		}

		$remark = implode('
', $remark);
		$url = ivurl('gohome/pages/order/detail', array('id' => $order['id']), true);
		$miniprogram = '';

		if ($config_wxapp_basic['tpl_consumer_url'] == 'wxapp') {
			$miniprogram = array('appid' => $config_wxapp_basic['key'], 'pagepath' => 'gohome/pages/order/detail?id=' . $order['id']);
		}

		$send = tpl_format($title, $order['ordersn'], $order['status_cn'], $remark);
		$status = $acc->sendTplNotice($order['openid'], $_W['we7_wmall']['config']['notice']['wechat']['public_tpl'], $send, $url, $miniprogram);
	}
	else {
		if ($order['order_channel'] == 'wxapp') {
			$send = array(
				'keyword1' => array('value' => '#' . $order['serial_sn'], 'color' => '#ff510'),
				'keyword2' => array('value' => $order['order_type_cn'], 'color' => '#ff510'),
				'keyword3' => array('value' => $order['status_cn'], 'color' => '#ff510'),
				'keyword4' => array('value' => $order['username'], 'color' => '#ff510'),
				'keyword5' => array('value' => $order['mobile'], 'color' => '#ff510'),
				'keyword6' => array('value' => $order['final_fee'], 'color' => '#ff510'),
				'keyword7' => array('value' => date('Y-m-d H:i'), 'color' => '#ff510'),
				'keyword8' => array('value' => $order['ordersn'], 'color' => '#ff510')
				);
			$public_tpl = $_W['we7_wmall']['config']['wxapp']['wxtemplate']['public_tpl'];
			$status = $acc->sendTplNotice($order['openid'], $public_tpl, $send, 'pages/order/detail?id=' . $order['id']);
		}
	}

	if (is_error($status)) {
		slog('wxtplNotice', 'gohome????????????????????????????????????-order_id:' . $order['id'], $send, $status['message']);
	}

	return true;
}

function gohome_comment_tags($type)
{
	$data = array(
		'goods'      => array(
			1 => array(
				'title' => '??????',
				'tags'  => array(
					array('id' => 0, 'title' => '?????????', 'active' => 0),
					array('id' => 1, 'title' => '????????????', 'active' => 0),
					array('id' => 2, 'title' => '?????????', 'active' => 0),
					array('id' => 3, 'title' => '?????????', 'active' => 0),
					array('id' => 4, 'title' => '?????????', 'active' => 0),
					array('id' => 5, 'title' => '?????????', 'active' => 0)
					)
				),
			2 => array(
				'title' => '??????',
				'tags'  => array(
					array('id' => 0, 'title' => '????????????', 'active' => 0),
					array('id' => 1, 'title' => '????????????', 'active' => 0),
					array('id' => 2, 'title' => '????????????', 'active' => 0),
					array('id' => 3, 'title' => '????????????', 'active' => 0),
					array('id' => 4, 'title' => '????????????', 'active' => 0),
					array('id' => 5, 'title' => '????????????', 'active' => 0)
					)
				),
			3 => array(
				'title' => '??????',
				'tags'  => array(
					array('id' => 0, 'title' => '????????????', 'active' => 0),
					array('id' => 1, 'title' => '????????????', 'active' => 0),
					array('id' => 2, 'title' => '????????????', 'active' => 0),
					array('id' => 3, 'title' => '????????????', 'active' => 0),
					array('id' => 4, 'title' => '????????????', 'active' => 0),
					array('id' => 5, 'title' => '????????????', 'active' => 0)
					)
				),
			4 => array(
				'title' => '????????????',
				'tags'  => array(
					array('id' => 0, 'title' => '????????????', 'active' => 0),
					array('id' => 1, 'title' => '????????????', 'active' => 0),
					array('id' => 2, 'title' => '????????????', 'active' => 0),
					array('id' => 3, 'title' => '????????????', 'active' => 0),
					array('id' => 4, 'title' => '????????????', 'active' => 0),
					array('id' => 5, 'title' => '????????????', 'active' => 0)
					)
				),
			5 => array(
				'title' => '????????????',
				'tags'  => array(
					array('id' => 0, 'title' => '????????????', 'active' => 0),
					array('id' => 1, 'title' => '????????????', 'active' => 0),
					array('id' => 2, 'title' => '????????????', 'active' => 0),
					array('id' => 3, 'title' => '????????????', 'active' => 0),
					array('id' => 4, 'title' => '????????????', 'active' => 0),
					array('id' => 5, 'title' => '????????????', 'active' => 0)
					)
				)
			),
		'deliveryer' => array()
		);

	if (!empty($type)) {
		return $data[$type];
	}

	return $data;
}

function gohome_get_goods_comment($goods_id, $goods_type)
{
	global $_W;
	global $_GPC;
	if (empty($goods_id) || empty($goods_type)) {
		return false;
	}

	$condition = ' where a.uniacid = :uniacid and a.agentid = :agentid and a.goods_id = :goods_id and a.goods_type = :goods_type and a.status = 0';
	$params = array(':uniacid' => $_W['uniacid'], ':agentid' => $_W['agentid'], ':goods_id' => $goods_id, ':goods_type' => $goods_type);
	$page = max(1, intval($_GPC['page']));
	$psize = intval($_GPC['psize']) ? intval($_GPC['psize']) : 15;
	$total = pdo_fetchcolumn('select count(*) from ' . tablename('tiny_wmall_gohome_comment') . ' as a left join ' . tablename('tiny_wmall_members') . (' as b on a.uid = b.uid ' . $condition), $params);
	$data = pdo_fetchall('select a.*, b.nickname, b.avatar from ' . tablename('tiny_wmall_gohome_comment') . ' as a left join ' . tablename('tiny_wmall_members') . (' as b on a.uid = b.uid ' . $condition . ' order by a.id desc limit ') . ($page - 1) * $psize . ',' . $psize, $params);

	if (!empty($data)) {
		$tag_goods = gohome_comment_tags('goods');

		foreach ($data as &$value) {
			$value['addtime_cn'] = date('Y-m-d H:i', $value['addtime']);
			$value['goods_quality'] = intval($value['goods_quality']);
			$value['thumbs'] = iunserializer($value['thumbs']);

			if (!empty($value['thumbs'])) {
				foreach ($value['thumbs'] as &$thumb) {
					$thumb = tomedia($thumb);
				}
			}

			$value['data'] = iunserializer($value['data']);

			if (!empty($value['data']['tag_goods'])) {
				$tags = array();
				$tags_keys = explode('|', $value['data']['tag_goods']);

				if (!empty($tags_keys)) {
					foreach ($tags_keys as $keys) {
						$tags[] = $tag_goods[$value['goods_quality']]['tags'][$keys];
					}
				}
			}

			$value['tag_goods'] = $tags;
		}
	}

	$pager = pagination($total, $page, $psize);
	return array('comment' => $data, 'total' => $total, 'pager' => $pager);
}

function gohome_get_danmu($goods_id = 0, $type = '')
{
	global $_W;
	$config = get_plugin_config('gohome.basic.danmu_status');
	$status = isset($config[$type]) ? $config[$type] : 0;

	if ($status != 1) {
		return false;
	}

	$condition = ' as b on a.uid = b.uid where a.uniacid = :uniacid';
	$params = array(':uniacid' => $_W['uniacid']);

	if (0 < $goods_id) {
		$condition .= ' and a.goods_id = :goods_id';
		$params[':goods_id'] = $goods_id;
	}

	$order_types = array('pintuan', 'kanjia', 'seckill');

	if (in_array($type, $order_types)) {
		$condition .= ' and a.order_type = :order_type';
		$params[':order_type'] = $type;
	}

	$condition .= ' and b.nickname != \'\' and b.avatar != \'\' order by a.id desc limit 10';
	$members = pdo_fetchall('select b.nickname, b.avatar from ' . tablename('tiny_wmall_gohome_order') . ' as a left join ' . tablename('tiny_wmall_members') . $condition, $params);

	if (empty($members)) {
		$members = pdo_fetchall('select nickname, avatar from ' . tablename('tiny_wmall_members') . ' where uniacid = :uniacid and nickname != \'\' and avatar != \'\' order by id desc limit 10;', array(':uniacid' => $_W['uniacid']));
	}

	if (!empty($members)) {
		foreach ($members as &$val) {
			$val['avatar'] = tomedia($val['avatar']);
			$val['time'] = '??????';
		}
	}

	return $members;
}

function gohome_complain_notice($idOrComplain)
{
	global $_W;
	$maneger = $_W['we7_wmall']['config']['manager'];

	if (empty($maneger['openid'])) {
		return error(-1, '??????????????????????????????openid');
	}

	$complain = $idOrComplain;

	if (!is_array($complain)) {
		$complain = pdo_get('tiny_wmall_complain', array('uniacid' => $_W['uniacid'], 'id' => $complain));
	}

	if (!empty($complain)) {
		$complain_types = array(
			'cheat'     => array('type' => 'cheat', 'text' => '?????????????????????????????????????????????'),
			'eroticism' => array('type' => 'eroticism', 'text' => '???????????????????????????'),
			'violence'  => array('type' => 'violence', 'text' => '?????????????????????????????????'),
			'politics'  => array('type' => 'politics', 'text' => '?????????????????????????????????'),
			'privacy'   => array('type' => 'privacy', 'text' => '?????????????????????????????????????????????????????????'),
			'induce'    => array('type' => 'induce', 'text' => '????????????????????????/?????????????????????'),
			'rumor'     => array('type' => 'rumor', 'text' => '??????????????????????????????'),
			'gamble'    => array('type' => 'gamble', 'text' => '????????????????????????')
			);
		$acc = TyAccount::create($complain['uniacid']);
		$title = '??????????????????????????????';
		$remark = array('????????????: ' . $_W['member']['nickname'], '????????????: ' . $_W['member']['uid'], '????????????: ' . $complain_types[$complain['type']]['text'], '????????????: ' . date('Y-m-d H:i', $complain['addtime']));
		$end_remark = '????????????????????????????????????';
		$remark[] = $end_remark;
		$remark = implode('
', $remark);
		$url = $complain['link'];
		$send = tpl_format($title, '', '', $remark);
		$status = $acc->sendTplNotice($maneger['openid'], $_W['we7_wmall']['config']['notice']['wechat']['public_tpl'], $send, $url);
	}

	if (is_error($status)) {
		slog('wxtplNotice', 'gohome???????????????????????????????????????-UID:' . $_W['member']['uid'], $send, $status['message']);
	}

	return true;
}

function gohome_order_refund_notice($orderOrid, $type, $note = '')
{
	global $_W;
	$order = $orderOrid;

	if (!is_array($order)) {
		$order = gohome_order_fetch($orderOrid);
	}

	if (empty($order)) {
		return error(-1, '???????????????????????????');
	}

	$store = store_fetch($order['sid'], array('title', 'id'));
	$acc = WeAccount::create($order['uniacid']);
	mload()->model('clerk');
	$clerks = clerk_fetchall($order['sid']);

	if ($type == 'success') {
		gohome_order_clerk_notice($order['id'], 'cancel');
	}
	else {
		if ($type == 'fail') {
			if (0 < $order['agentid']) {
				$_W['agentid'] = 0;
				$_W['we7_wmall']['config'] = get_system_config();
			}

			$maneger = $_W['we7_wmall']['config']['manager'];

			if (!empty($maneger['openid'])) {
				$tips = '?????????????????????????????????????????????,???????????????' . $order['refund_out_no'] . '???,???????????????';
				$remark = array('????????????: ' . $store['title'], '????????????: ' . $order['refund_out_no'], '????????????: ' . $order['pay_type_cn'], '????????????: ' . $order['username'], '????????????: ' . $order['mobile'], $note);
				$params = array('first' => $tips, 'reason' => '?????????????????????, ??????????????????', 'refund' => $order['final_fee'], 'remark' => implode('
', $remark));
				$send = sys_wechat_tpl_format($params);
				$status = $acc->sendTplNotice($maneger['openid'], $_W['we7_wmall']['config']['notice']['wechat']['refund_tpl'], $send);

				if (is_error($status)) {
					slog('wxtplNotice', '?????????????????????????????????????????????', $send, $status['message']);
				}
			}
		}
	}

	return true;
}

function gohome_order_clerk_notice($id, $type, $note = '')
{
	global $_W;
	$order = gohome_order_fetch($id);

	if (empty($order)) {
		return error(-1, '???????????????????????????');
	}

	mload()->model('clerk');
	$clerks = clerk_fetchall($order['sid']);

	if (empty($clerks)) {
		return false;
	}

	$store = $order['store'];
	$account = $order['uniacid'];
	$channel_notice = 'wechat';
	$acc = TyAccount::create($account, $channel_notice);

	if ($type == 'pay') {
		$title = '?????????????????????' . $order['order_type_cn'] . '??????,???????????? #' . $order['id'] . ' ,????????????:' . $order['final_fee'] . '???,???????????????';
		$Jpush_title = '????????????????????????????????????';
		$remark = array('??????????????? ' . $store['title'], '???????????????' . $order['buyremark'], '??????????????? ' . $order['goods']['name'] . ' x ' . $order['num'], '??????????????? ' . $order['addtime_cn'], '??????????????? ' . $order['final_fee'], '??????????????? ' . $order['pay_type_cn'], '????????????: ' . $order['order_type_cn']);

		if ($order['order_type'] == 'pintuan') {
			$pintuan_type = $order['is_team'] == 1 ? '??????' : '????????????';
			$remark[] = '??????????????? ' . $pintuan_type;
		}
	}
	else if ($type == 'confirm') {
		$title = '???????????? #' . $order['id'] . ' ???' . $order['order_type_cn'] . '??????, ????????????';
		$remark = array('????????????: ' . $store['title'], '????????????: ' . $order['order_type_cn'], '??????????????? ' . $order['goods']['name'] . ' x ' . $order['num'], '????????????: ' . date('Y-m-d H:i', $order['applytime']));
	}
	else if ($type == 'team_success') {
		$title = '???????????????' . $order['id'] . '???????????????????????????????????????????????????';
		$Jpush_title = '????????????????????????????????????????????????';
		$remark = array('????????????: ' . $store['title'], '????????????: ' . $order['goods']['name'], '????????????: ' . $order['takepart_num']);
	}
	else {
		if ($type == 'cancel') {
			$tips = '?????????????????????' . $order['refund_out_no'] . '???????????????????????????';
			$Jpush_title = '?????????????????????????????????';
			$remark = array('????????????: ' . $store['title'], '????????????: ' . $order['pay_type_cn'], '????????????: ' . $order['username'], '????????????: ' . $order['mobile'], '????????????: ' . $order['pay_type_cn'], '????????????, ????????????????????????');
		}
	}

	if ($channel_notice == 'wechat') {
		if (!empty($note)) {
			if (!is_array($note)) {
				$remark[] = $note;
			}
			else {
				$remark[] = implode('
', $note);
			}
		}

		$remark[] = '??????????????????????????????????????????APP???????????????????????????';
		$url = '';
		$remark = implode('
', $remark);
		$miniprogram = '';
		$send = tpl_format($title, $order['ordersn'], $order['status_cn'], $remark);
		$public_tpl = $_W['we7_wmall']['config']['notice']['wechat']['public_tpl'];
	}

	mload()->model('sms');

	foreach ($clerks as $clerk) {
		if ($clerk['extra']['accept_wechat_notice'] == 1) {
			if ($channel_notice == 'wechat') {
				$status = $acc->sendTplNotice($clerk['openid'], $public_tpl, $send, $url, $miniprogram);
			}
			else {
				$status = $acc->sendTplNotice($clerk['openid_wxapp_manager'], $public_tpl, $send, $url);
			}

			if (is_error($status)) {
				slog('wxtplNotice', '?????????????????????????????????????????????-' . $store['title'] . ':' . $clerk['title'] . ',??????:' . $channel_notice, $send, $status['message']);
			}
		}
		else {
			slog('wxtplNotice', '?????????????????????????????????????????????-' . $store['title'] . ':' . $clerk['title'], $send, '???????????????????????????????????????');
		}
	}

	if (in_array($type, array('pay', 'cancel', 'team_success'))) {
		$audience = array(
			'tag' => array($store['push_token'])
			);
		$type = $type == 'pay' || $type == 'team_success' ? 'place_order' : $type;
		$data = Jpush_clerk_send($Jpush_title, $title, array('voice_text' => $title, 'url' => $url, 'notify_type' => $type, 'order_from' => 'gohome', 'id' => $order['id']), $audience);
	}

	return true;
}

function gohome_get_menu($type = '')
{
	global $_W;

	if (empty($type)) {
		$type = $_W['_controller'];
	}

	if (empty($type)) {
		$type = 'pintuan';
	}

	$menus = array(
		'gohome'    => array(
			'name'   => 'gohome',
			'params' => array('navstyle' => '0'),
			'css'    => array('iconColor' => '#163636', 'iconColorActive' => '#ff2d4b', 'textColor' => '#929292', 'textColorActive' => '#ff2d4b'),
			'data'   => array(
				'M0123456789101' => array('link' => '/gohome/pages/home/index', 'icon' => 'icon-home', 'text' => '??????'),
				'M0123456789102' => array('link' => '/gohome/pages/member/favorite', 'icon' => 'icon-likefill', 'text' => '??????'),
				'M0123456789103' => array('link' => '/gohome/pages/order/index', 'icon' => 'icon-order', 'text' => '??????'),
				'M0123456789104' => array('link' => '/gohome/pages/tongcheng/index', 'icon' => 'icon-community_fill_light', 'text' => '??????'),
				'M0123456789105' => array('link' => '/pages/member/mine', 'icon' => 'icon-mine', 'text' => '??????')
				)
			),
		'pintuan'   => array(
			'name'   => 'pintuan',
			'params' => array('navstyle' => '0'),
			'css'    => array('iconColor' => '#163636', 'iconColorActive' => '#ff2d4b', 'textColor' => '#929292', 'textColorActive' => '#ff2d4b'),
			'data'   => array(
				'M0123456789101' => array('link' => '/gohome/pages/pintuan/index', 'icon' => 'icon-home', 'text' => '??????'),
				'M0123456789103' => array('link' => '/gohome/pages/member/favorite', 'icon' => 'icon-likefill', 'text' => '??????'),
				'M0123456789102' => array('link' => '/gohome/pages/order/index', 'icon' => 'icon-order', 'text' => '??????'),
				'M0123456789104' => array('link' => '/gohome/pages/home/index', 'icon' => 'icon-skip', 'text' => '???????????????')
				)
			),
		'kanjia'    => array(
			'name'   => 'kanjia',
			'params' => array('navstyle' => '0'),
			'css'    => array('iconColor' => '#163636', 'iconColorActive' => '#ff2d4b', 'textColor' => '#929292', 'textColorActive' => '#ff2d4b'),
			'data'   => array(
				'M0123456789101' => array('link' => '/gohome/pages/kanjia/index', 'icon' => 'icon-home', 'text' => '??????'),
				'M0123456789103' => array('link' => '/gohome/pages/kanjia/record', 'icon' => 'icon-friend', 'text' => '??????'),
				'M0123456789104' => array('link' => '/gohome/pages/member/favorite', 'icon' => 'icon-likefill', 'text' => '??????'),
				'M0123456789102' => array('link' => '/gohome/pages/order/index', 'icon' => 'icon-order', 'text' => '??????'),
				'M0123456789105' => array('link' => '/gohome/pages/home/index', 'icon' => 'icon-skip', 'text' => '???????????????')
				)
			),
		'seckill'   => array(
			'name'   => 'seckill',
			'params' => array('navstyle' => '0'),
			'css'    => array('iconColor' => '#163636', 'iconColorActive' => '#ff2d4b', 'textColor' => '#929292', 'textColorActive' => '#ff2d4b'),
			'data'   => array(
				'M0123456789101' => array('link' => '/gohome/pages/seckill/index', 'icon' => 'icon-home', 'text' => '??????'),
				'M0123456789102' => array('link' => '/gohome/pages/order/index', 'icon' => 'icon-order', 'text' => '??????'),
				'M0123456789103' => array('link' => '/gohome/pages/member/favorite', 'icon' => 'icon-likefill', 'text' => '??????'),
				'M0123456789104' => array('link' => '/gohome/pages/home/index', 'icon' => 'icon-skip', 'text' => '???????????????')
				)
			),
		'tongcheng' => array(
			'name'   => 'tongcheng',
			'params' => array('navstyle' => '0'),
			'css'    => array('iconColor' => '#163636', 'iconColorActive' => '#ff2d4b', 'textColor' => '#929292', 'textColorActive' => '#ff2d4b'),
			'data'   => array(
				'M0123456789101' => array('link' => '/gohome/pages/tongcheng/index', 'icon' => 'icon-home', 'text' => '??????'),
				'M0123456789102' => array('link' => '/gohome/pages/tongcheng/publish/index', 'icon' => 'icon-edit', 'text' => '??????'),
				'M0123456789103' => array('link' => '/gohome/pages/tongcheng/publish/list', 'icon' => 'icon-message', 'text' => '????????????'),
				'M0123456789104' => array('link' => '/gohome/pages/home/index', 'icon' => 'icon-skip', 'text' => '???????????????')
				)
			),
		'haodian'   => array(
			'name'   => 'haodian',
			'params' => array('navstyle' => '0'),
			'css'    => array('iconColor' => '#163636', 'iconColorActive' => '#ff2d4b', 'textColor' => '#929292', 'textColorActive' => '#ff2d4b'),
			'data'   => array(
				'M0123456789101' => array('link' => '/gohome/pages/haodian/index', 'icon' => 'icon-home', 'text' => '??????'),
				'M0123456789103' => array('link' => '/gohome/pages/member/favorite', 'icon' => 'icon-likefill', 'text' => '??????'),
				'M0123456789104' => array('link' => '/gohome/pages/home/index', 'icon' => 'icon-skip', 'text' => '???????????????')
				)
			)
		);
	return $menus[$type];
}

function gohome_del_goods($id, $type)
{
	global $_W;
	$routers = array('kanjia' => 'tiny_wmall_kanjia', 'pintuan' => 'tiny_wmall_pintuan_goods', 'seckill' => 'tiny_wmall_seckill_goods');
	pdo_delete($routers[$type], array('uniacid' => $_W['uniacid'], 'id' => $id));
	return error(0, '??????????????????');
}

function gohome_get_notice($status = '-1')
{
	global $_W;
	$condition = ' where uniacid = :uniacid';
	$params = array(':uniacid' => $_W['uniacid']);

	if ($_W['is_agent']) {
		$condition .= ' and agentid = :agentid';
		$params[':agentid'] = $_W['agentid'];
	}

	if (0 < $status) {
		$condition .= ' and status = :status';
		$params[':status'] = $status;
	}

	$notice = pdo_fetchall('select * from' . tablename('tiny_wmall_gohome_notice') . $condition . ' order by displayorder desc', $params);
	return $notice;
}

function gohome_get_slider($status = '-1')
{
	global $_W;
	$condition = ' where uniacid = :uniacid';
	$params = array(':uniacid' => $_W['uniacid']);

	if ($_W['is_agent']) {
		$condition .= ' and agentid = :agentid';
		$params[':agentid'] = $_W['agentid'];
	}

	if (0 < $status) {
		$condition .= ' and status = :status';
		$params[':status'] = $status;
	}

	$sliders = pdo_fetchall('select * from' . tablename('tiny_wmall_gohome_slide') . $condition . ' order by displayorder desc', $params);

	if (!empty($sliders)) {
		foreach ($sliders as &$val) {
			$val['thumb'] = tomedia($val['thumb']);
		}
	}

	return $sliders;
}

function gohome_order_print($id)
{
	global $_W;
	$order = gohome_order_fetch($id);

	if (empty($order)) {
		return error(-1, '???????????????');
	}

	$sid = intval($order['sid']);
	$store = store_fetch($order['sid'], array('title'));
	$prints = pdo_fetchall('SELECT * FROM ' . tablename('tiny_wmall_printer') . ' WHERE uniacid = :aid AND sid = :sid AND status = 1', array(':aid' => $_W['uniacid'], ':sid' => $sid));

	if (empty($prints)) {
		return error(-1, '????????????????????????');
	}

	mload()->model('print');
	$num = 0;

	foreach ($prints as $li) {
		if (!empty($li['print_no'])) {
			$content = array('title' => '<CB>' . $_W['we7_wmall']['config']['mall']['title'] . '</CB>', 'orderfrom' => '<CB>' . $order['order_type_cn'] . '??????</CB>', 'store' => '<C>*' . $store['title'] . '*</C>');

			if (!empty($li['print_header'])) {
				$content['print_header'] = '<C>' . $li['print_header'] . '</C>';

				if ($li['type'] == '365') {
					$content['print_header'] = $li['print_header'];
				}
			}

			if ($order['is_pay'] == 1) {
				$content['pay'] = '<CB>--' . $order['pay_type_cn'] . '--</CB>';
			}

			if ($li['type'] == '365') {
				$content['store'] = '*' . $store['title'] . '*';
				$content['pay'] = '--' . $order['pay_type_cn'] . '--';
			}

			if (!empty($order['buyremark'])) {
				$content['buyremark'] = '<L>??????:' . $order['buyremark'] . '</L>';

				if ($li['type'] == '365') {
					$content['buyremark'] = '<C>??????:' . $order['buyremark'] . '</C>';
				}
			}

			$content[] = '--------------------------------';
			$content[] = '????????????:' . $order['addtime_cn'];
			$content[] = '????????????:' . $order['ordersn'];
			$content[] = '--------------------------------';

			if (!empty($order['goods'])) {
				$content['goods_header'] = '????????????????????????????????????????????????';
				$content[] = '********************************';
				$title = $order['goods']['name'];
				$title = iconv('utf-8', 'GBK//IGNORE', $title);
				$length = strlen($title);

				if ($li['type'] == 'xixun') {
					if (16 < $length) {
						$content['goods_title'] = '<1D2101><1B6100>' . $order['goods']['name'];
						$str = '';
						$str .= '???????????????????????????<1D2101><1B6100>X' . str_pad($order['num'], '3', ' ', STR_PAD_RIGHT);
						$str .= str_pad($order['final_fee'], '10', ' ', STR_PAD_LEFT);
						$content['goods_price'] = $str;
					}
					else {
						$title = str_pad($title, '16', ' ', STR_PAD_RIGHT);
						$title = iconv('GBK', 'utf-8', $title);
						$str = '<1D2101><1B6100>' . $title;
						$str .= '???<1D2101><1B6100>X' . str_pad($order['num'], '3', ' ', STR_PAD_RIGHT);
						$str .= str_pad($order['final_fee'], '10', ' ', STR_PAD_LEFT);
						$content['goods_item'] = $str;
					}
				}
				else if ($li['type'] == '365') {
					if (16 < $length) {
						$content[] = '<C>' . $order['goods']['name'] . '</C>';
						$str = '<C>';
						$str .= '???????????????????????????X' . str_pad($order['num'], '3', ' ', STR_PAD_RIGHT);
						$str .= str_pad($order['final_fee'], '10', ' ', STR_PAD_LEFT) . '</C>';
						$content[] = $str;
					}
					else {
						$title = str_pad($title, '16', ' ', STR_PAD_RIGHT);
						$title = iconv('GBK', 'utf-8', $title);
						$str = '<C>' . $title . '</C>';
						$str .= '???X' . str_pad($order['num'], '3', ' ', STR_PAD_RIGHT);
						$str .= str_pad($order['final_fee'], '10', ' ', STR_PAD_LEFT);
						$content[] = $str;
					}
				}
				else if (16 < $length) {
					$content[] = '<L>' . $order['goods']['name'] . '</L>';
					$str = '';
					$str .= '???????????????????????????<L>X' . str_pad($order['num'], '3', ' ', STR_PAD_RIGHT) . '</L>';
					$str .= '<L>' . str_pad($order['final_fee'], '10', ' ', STR_PAD_LEFT) . '</L>';
					$content[] = $str;
				}
				else {
					$title = str_pad($title, '16', ' ', STR_PAD_RIGHT);
					$title = iconv('GBK', 'utf-8', $title);
					$str = '<L>' . $title . '</L>';
					$str .= '???<L>X' . str_pad($order['num'], '3', ' ', STR_PAD_RIGHT) . '</L>';
					$str .= '<L>' . str_pad($order['final_fee'], '10', ' ', STR_PAD_LEFT) . '</L>';
					$content[] = $str;
				}

				$content[] = '********************************';

				if ($order['order_type'] == 'kanjia') {
					$bargain = $order['goods']['oldprice'] - $order['final_fee'];
					$content[] = '??????????????????:' . $bargain . '???';
				}
				else {
					if ($order['order_type'] == 'pintuan') {
						$team_cn = empty($order['is_team']) ? '????????????' : $order['team_num'] . '??????';
						$content[] = '????????????:' . $team_cn;
					}
				}

				$content['final_fee'] = '????????????:' . $order['final_fee'] . '???';

				if ($li['type'] == '365') {
					$content['username'] = '<C>' . $order['username'] . '</C>';
					$content['mobile'] = '<C>' . $order['mobile'] . '</C>';
				}
				else {
					$content['username'] = '<L>' . $order['username'] . '</L>';
					$content['mobile'] = '<L>' . $order['mobile'] . '</L>';
				}

				if (!empty($li['print_footer'])) {
					$content['print_footer'] = '<C>' . $li['print_footer'] . '</C>';

					if ($li['type'] == '365') {
						$content['print_footer'] = $li['print_footer'];
					}
				}

				if ($li['type'] == 'feie') {
					$content[] = implode('', array('', 'd', '', '', 'p', '0', '', 'x'));
				}
				else {
					if ($li['type'] == 'qiyun' && 0 < $li['print_nums']) {
						$content[] = '<N>' . $li['print_nums'] . '</N>';
					}
				}

				$content['end'] = '<CB>*****???*****</CB>';
				$li['deviceno'] = $li['print_no'];
				$li['content'] = $content;
				$li['times'] = $li['print_nums'];
				$li['orderindex'] = $order['ordersn'] . random(10, true);
				if (($li['type'] == 'feiyin' || $li['type'] == 'AiPrint') && 0 < $li['print_nums']) {
					$i = 0;

					while ($i < $li['print_nums']) {
						$li['orderindex'] = $order['ordersn'] . random(10, true);
						$status = print_add_order($li, $order);

						if (!is_error($status)) {
							++$num;
						}

						++$i;
					}
				}
				else {
					$status = print_add_order($li, $order);

					if (!is_error($status)) {
						$num += $li['print_nums'];
					}
				}
			}
		}

		if (0 < $num) {
			pdo_query('UPDATE ' . tablename('tiny_wmall_gohome_order') . (' SET print_nums = print_nums + ' . $num . ', print_status = 1 WHERE uniacid = ' . $_W['uniacid'] . ' AND id = ' . $order['id']));
			return true;
		}

		if ($order['print_status'] != 0) {
			pdo_update('tiny_wmall_gohome_order', array('print_status' => 0), array('id' => $order['id']));
		}

		slog('orderprint', '????????????????????????', '', '??????????????????:' . $order['id'] . ';????????????:' . $status['message']);
		return error(-1, '????????????????????????:' . $status['message']);
	}

	return true;
}

defined('IN_IA') || exit('Access Denied');

?>
