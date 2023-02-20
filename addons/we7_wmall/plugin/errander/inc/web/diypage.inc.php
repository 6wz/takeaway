<?php

defined('IN_IA') || exit('Access Denied');
global $_W;
global $_GPC;
$op = trim($_GPC['op']) ? trim($_GPC['op']) : 'scene';

if ($op == 'home') {
	$_W['page']['title'] = '自定义首页';
	$homepage = pdo_fetch('SELECT * FROM ' . tablename('tiny_wmall_errander_page') . ' WHERE uniacid = :uniacid and agentid = :agentid and type = :type', array(':type' => 'home', ':uniacid' => $_W['uniacid'], ':agentid' => $_W['agentid']));

	if ($_W['ispost']) {
		$insert = array('uniacid' => $_W['uniacid'], 'agentid' => $_W['agentid'], 'name' => $_GPC['data']['page']['name'], 'data' => base64_encode(json_encode($_GPC['data'])));

		if (!empty($homepage)) {
			$insert['updatetime'] = TIMESTAMP;
			pdo_update('tiny_wmall_errander_page', $insert, array('uniacid' => $_W['uniacid'], 'agentid' => $_W['agentid'], 'type' => 'home'));
		}
		else {
			$insert['addtime'] = TIMESTAMP;
			$insert['type'] = 'home';
			pdo_insert('tiny_wmall_errander_page', $insert);
		}

		imessage(error(0, '编辑首页成功'), iurl('errander/diypage/home'), 'ajax');
	}

	if (!empty($homepage)) {
		$homepage['data'] = json_decode(base64_decode($homepage['data']), true);
	}

	include itemplate('diy/home');
	return 1;
}

if ($op == 'scene') {
	$_W['page']['title'] = '自定义页面';
	$condition = ' where uniacid = :uniacid and type = :type';
	$params = array(':uniacid' => $_W['uniacid'], ':type' => 'scene');
	$keyword = trim($_GPC['keyword']);

	if (!empty($keyword)) {
		$condition .= ' and name like \'%' . $keyword . '%\'';
	}

	$pindex = max(1, intval($_GPC['page']));
	$psize = 15;
	$total = pdo_fetchcolumn('SELECT COUNT(*) FROM ' . tablename('tiny_wmall_errander_page') . $condition, $params);
	$pages = pdo_fetchall('select * from ' . tablename('tiny_wmall_errander_page') . $condition . ' order by id desc limit ' . ($pindex - 1) * $psize . ',' . $psize, $params);
	$pager = pagination($total, $pindex, $psize);

	if ($_W['is_agent']) {
		mload()->model('agent');
		$agents = get_agents();
	}

	include itemplate('diy/scene');
	return 1;
}

if ($op == 'post') {
	$_W['page']['title'] = '跑腿页面编辑';
	$id = intval($_GPC['id']);
	$scene = trim($_GPC['scene']);

	if ($_W['ispost']) {
		$insert = array();
		$type = trim($_GPC['type']);
		$has_basic = 0;

		if (!empty($_GPC['data']['items'])) {
			foreach ($_GPC['data']['items'] as $item) {
				if ($item['id'] == 'basic') {
					$has_basic = 1;
					$_GPC['data']['page']['scene'] = $item['params']['scene'] ? $item['params']['scene'] : $scene;
					$agreement = htmlspecialchars_decode(base64_decode($item['params']['agreement']));
				}
			}
		}

		if ($has_basic == 0) {
			imessage(error(-1, '跑腿场景必须添加基础组件！'), '', 'ajax');
		}

		$insert = array('uniacid' => $_W['uniacid'], 'scene' => $_GPC['data']['page']['scene'], 'name' => $_GPC['data']['page']['name'], 'data' => base64_encode(json_encode($_GPC['data'])), 'agreement' => $agreement, 'thumb' => trim($_GPC['data']['page']['thumb']), 'start_hour' => trim($_GPC['data']['page']['start_hour']), 'end_hour' => trim($_GPC['data']['page']['end_hour']));

		if (!empty($id)) {
			$insert['updatetime'] = TIMESTAMP;
			pdo_update('tiny_wmall_errander_page', $insert, array('uniacid' => $_W['uniacid'], 'id' => $id));
		}
		else {
			$insert['addtime'] = TIMESTAMP;
			$insert['type'] = 'scene';
			pdo_insert('tiny_wmall_errander_page', $insert);
			$id = pdo_insertid();
		}

		imessage(error(0, '跑腿场景编辑成功'), iurl('errander/diypage/post', array('id' => $id)), 'ajax');
	}

	if (!empty($id)) {
		$diypage = pdo_fetch('SELECT * FROM ' . tablename('tiny_wmall_errander_page') . ' WHERE uniacid = :uniacid and id = :id', array(':uniacid' => $_W['uniacid'], ':id' => $id));

		if (!empty($diypage)) {
			$diypage['data'] = json_decode(base64_decode($diypage['data']), true);
		}
	}

	include itemplate('diy/scene');
	return 1;
}

if ($op == 'del') {
	$ids = $_GPC['id'];

	if (!is_array($ids)) {
		$ids = array($ids);
	}

	foreach ($ids as $id) {
		pdo_delete('tiny_wmall_errander_page', array('uniacid' => $_W['uniacid'], 'id' => $id));
	}

	imessage(error(0, '删除自定义页面成功'), referer(), 'ajax');
	return 1;
}

if ($op == 'setting') {
	$_W['page']['title'] = '跑腿首页设置';
	$home_setting = get_plugin_config('errander.page.home');

	if ($_W['ispost']) {
		$page_home = trim($_GPC['paotui_home']);

		if (!empty($page_home)) {
			set_plugin_config('errander.page.home', $page_home);
		}

		imessage(error(0, '跑腿首页设置成功'), iurl('errander/diypage/setting'), 'ajax');
	}

	include itemplate('diy/setting');
}

?>
