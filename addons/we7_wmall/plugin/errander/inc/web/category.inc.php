<?php

defined('IN_IA') || exit('Access Denied');
global $_W;
global $_GPC;
$op = trim($_GPC['op']) ? trim($_GPC['op']) : 'list';
mload()->model('member');

if ($op == 'list') {
	$_W['page']['title'] = '分类列表';

	if ($_W['ispost']) {
		if (!empty($_GPC['ids'])) {
			foreach ($_GPC['ids'] as $k => $v) {
				$data = array('title' => trim($_GPC['title'][$k]), 'displayorder' => intval($_GPC['displayorder'][$k]));
				pdo_update('tiny_wmall_errander_category', $data, array('uniacid' => $_W['uniacid'], 'id' => intval($v)));
			}

			imessage(error(0, '修改成功'), iurl('errander/category/list'), 'ajax');
		}
	}

	$condition = ' where uniacid = :uniacid';
	$params = array(':uniacid' => $_W['uniacid']);
	$categorys = pdo_fetchall('SELECT * FROM ' . tablename('tiny_wmall_errander_category') . $condition . ' ORDER BY displayorder DESC,id ASC', $params);

	if ($_W['is_agent']) {
		mload()->model('agent');
		$agents = get_agents();
	}
}

if ($op == 'post') {
	$_W['page']['title'] = '编辑跑腿分类';
	$id = intval($_GPC['id']);
	$groups = member_groups();

	if (0 < $id) {
		$item = pdo_get('tiny_wmall_errander_category', array('uniacid' => $_W['uniacid'], 'id' => $id));

		if (empty($item)) {
			imessage(error(-1, '跑腿类型不存在或已删除'), referer(), 'ajax');
		}

		$item['group_discount'] = iunserializer($item['group_discount']);
		$item['label'] = iunserializer($item['label']);
		$item['labels'] = iunserializer($item['labels']);
		$item['delivery_times'] = iunserializer($item['delivery_times']);
		$item['weight_fee'] = iunserializer($item['weight_fee']);
		$item['multiaddress'] = iunserializer($item['multiaddress']);
		$item['notice'] = iunserializer($item['notice']);
	}

	if ($_W['ispost']) {
		$title = trim($_GPC['title']) ? trim($_GPC['title']) : imessage(error(-1, '标题不能为空'), '', 'ajax');
		$data = array('uniacid' => $_W['uniacid'], 'title' => $title, 'type' => trim($_GPC['type']), 'thumb' => trim($_GPC['thumb']), 'goods_thumbs_status' => intval($_GPC['goods_thumbs_status']), 'delivery_within_days' => intval($_GPC['delivery_within_days']), 'start_fee' => trim($_GPC['start_fee']), 'start_km' => trim($_GPC['start_km']), 'pre_km' => trim($_GPC['pre_km']), 'pre_km_fee' => trim($_GPC['pre_km_fee']), 'distance_calculate_type' => trim($_GPC['distance_calculate_type']), 'weight_fee_status' => intval($_GPC['weight_fee_status']), 'goods_value_status' => intval($_GPC['goods_value_status']), 'tip_min' => trim($_GPC['tip_min']) < 0 ? 0 : trim($_GPC['tip_min']), 'tip_max' => trim($_GPC['tip_max']) < 0 ? 200 : trim($_GPC['tip_max']), 'displayorder' => intval($_GPC['displayorder']), 'rule' => htmlspecialchars_decode($_GPC['rule']));
		$discount_type = intval($_GPC['discount_type']);
		$arr = array();

		if (0 < $discount_type) {
			if ($discount_type == 1) {
				$ids = $_GPC['groupids'];
				$condition = $_GPC['condition1'];
				$back = $_GPC['back1'];
			}
			else {
				if ($discount_type == 2) {
					$ids = $_GPC['groupid'];
					$condition = $_GPC['condition2'];
					$back = $_GPC['back2'];
				}
			}

			if (!empty($ids)) {
				foreach ($ids as $k => $v) {
					$arr[$v] = array('groupid' => $ids[$k], 'condition' => $condition[$k], 'back' => $back[$k]);
				}
			}
		}

		$data['group_discount'] = array('type' => $discount_type, 'data' => $arr);
		$data['group_discount'] = iserializer($data['group_discount']);

		if ($data['type'] == 'multiaddress') {
			$multiaddress = array('max' => intval($_GPC['multiaddress']['max']));

			if (empty($multiaddress['max'])) {
				imessage(error(-1, '请设置最多可添加几个地址'), referer(), 'ajax');
			}

			$_GPC['multiaddress']['fee'] = str_replace(array(',', '，'), array(',', ','), $_GPC['multiaddress']['fee']);
			$multiaddress['fee'] = explode(',', $_GPC['multiaddress']['fee']);

			if (count($multiaddress['fee']) != $multiaddress['max']) {
				imessage(error(-1, '地址数量和配送费数量不一致'), referer(), 'ajax');
			}

			foreach ($multiaddress['fee'] as &$row) {
				$row = floatval($row);
			}

			$data['multiaddress'] = iserializer($multiaddress);
			$data['weight_fee_status'] = 0;
		}

		$data['label'] = array();

		if (!empty($_GPC['label'])) {
			foreach ($_GPC['label'] as $label) {
				if (empty($label)) {
					continue;
				}

				$data['label'][] = $label;
			}
		}

		$data['label'] = iserializer($data['label']);
		$data['labels'] = array();
		$labels = array();

		if (!empty($_GPC['labels'])) {
			foreach ($_GPC['labels']['name'] as $key => $val) {
				if (empty($_GPC['labels']['name'][$key])) {
					continue;
				}

				$labels[] = array('icon' => trim($_GPC['labels']['icon'][$key]), 'name' => trim($_GPC['labels']['name'][$key]), 'autosearch' => intval($_GPC['labels']['autosearch'][$key]), 'keywords' => trim($_GPC['labels']['keywords'][$key]));
			}
		}

		$data['labels'] = iserializer($labels);
		$times = array();

		if (!empty($_GPC['times']['start'])) {
			foreach ($_GPC['times']['start'] as $key => $val) {
				$start = trim($val);
				$end = trim($_GPC['times']['end'][$key]);
				if (empty($start) || empty($end)) {
					continue;
				}

				$times[] = array('start' => $start, 'end' => $end, 'status' => intval($_GPC['times']['status'][$key]), 'fee' => intval($_GPC['times']['fee'][$key]));
			}
		}

		$deliveryer_id = array();

		if (!empty($_GPC['deliveryer_id'])) {
			foreach ($_GPC['deliveryer_id'] as $deliveryer) {
				$deliveryer = intval($deliveryer);

				if (0 < $deliveryer) {
					$deliveryer_id[] = $deliveryer;
				}
			}
		}

		$data['delivery_times'] = iserializer($times);
		$data['notice'] = array('text' => trim($_GPC['text']), 'url' => trim($_GPC['url']), 'btn_text' => trim($_GPC['btn_text']) ? trim($_GPC['btn_text']) : '知道了', 'between_time' => intval($_GPC['between_time']) ? intval($_GPC['between_time']) : 0);
		$data['notice'] = iserializer($data['notice']);

		if ($data['weight_fee_status'] == 1) {
			$weight_fee = array('start_weight' => intval($_GPC['start_weight']));
			$weight = array();

			if (!empty($_GPC['pre_kgs'])) {
				foreach ($_GPC['pre_kgs'] as $key => $val) {
					if (empty($val) || empty($_GPC['pre_kg_fees'][$key])) {
						continue;
					}

					$weight[$val] = $_GPC['pre_kg_fees'][$key];
				}

				ksort($weight);
				$weight_fee['weight'] = $weight;
			}

			$data['weight_fee'] = iserializer($weight_fee);
		}

		if (empty($item['id'])) {
			pdo_insert('tiny_wmall_errander_category', $data);
		}
		else {
			pdo_update('tiny_wmall_errander_category', $data, array('uniacid' => $_W['uniacid'], 'id' => $id));
		}

		imessage(error(0, '编辑成功'), iurl('errander/category/list'), 'ajax');
	}
}

if ($op == 'del') {
	$id = intval($_GPC['id']);
	pdo_delete('tiny_wmall_errander_category', array('uniacid' => $_W['uniacid'], 'id' => $id));
	imessage(error(0, '删除跑腿分类成功'), '', 'ajax');
}

if ($op == 'status') {
	$id = intval($_GPC['id']);
	$status = intval($_GPC['status']);
	pdo_update('tiny_wmall_errander_category', array('status' => $status), array('uniacid' => $_W['uniacid'], 'id' => $id));
	imessage(error(0, '设置分类状态成功'), '', 'ajax');
}

include itemplate('category');

?>
