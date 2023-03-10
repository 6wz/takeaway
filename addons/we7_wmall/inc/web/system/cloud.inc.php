<?php
/**
 * LL外卖 - 做好用的外卖系统!
 * =========================================================
 * Copy right 2015-2038 
 * ----------------------------------------------
 * 
 * 这不是一个自由软件！您只能在不用于商业目的的前提下对程序代码进行修改和使用。
 * 任何企业和个人不允许对程序代码以任何形式任何目的再发布。
 * =========================================================
 * @author : 翰飞网络团队
 * 
 */
defined('IN_IA') or exit('Access Denied');
mload()->model('store');
global $_W, $_GPC;
$op = trim($_GPC['op']) ? trim($_GPC['op']) : 'auth';

if($op == 'auth') {
	$_W['page']['title'] = '授权管理';
	$params = array(
		'url' => $_W['siteroot'],
		'host' => $_SERVER['HTTP_HOST'],
		'ip' => gethostbyname($_SERVER['HTTP_HOST']),
		'site_id' => $_W['setting']['site']['key'],
		'uniacid' => $_W['uniacid'],
		'code' => '',
	);
	$urls = parse_url($_W['siteroot']);
	$ip = ip2long($urls['host']);
	if (!empty($ip)) {
		$params['ip'] = $urls['host'];
	} else {
		$dns = dns_get_record($urls['host'], DNS_A);
		$params['ip'] = $dns[0]['ip'];
	}

	if($_W['ispost']) {
		$url = trim($_GPC['url']);
		if(empty($url)) {
			imessage(error(-1, '站点url不能为空'), referer(), 'ajax');
		}
		$ip = trim($_GPC['ip']);
		if(empty($ip)) {
			//imessage(error(-1, '站点ip不能为空'), referer(), 'ajax');
		}
		$status = cloud_w_query_auth($code, 'we7_wmall');
		if(is_error($status)) {
			imessage(error(-1, $status['message']), '', 'ajax');
		} else {
			$data = array(
				'cloud_id' => $status['message']['cloud_id'],
				'code' => $status['message']['code'],
				'addtime' => $status['message']['addtime'],
				'endtime' => $status['message']['endtime'],
				'code_status' => 1,
				'gengxin' => $status['message']['gengxin'],
			);
			cache_write('we7_wmall', $data);
			set_global_config('auth', $data);
			imessage(error(0, '您的站点已授权'), referer(), 'ajax');
		}
	} else {
		$status = cloud_w_query_auth($code, 'we7_wmall');
		if(!is_error($status)) {
			$data = array(
				'cloud_id' => $status['message']['cloud_id'],
				'code' => $status['message']['code'],
				'addtime' => $status['message']['addtime'],
				'endtime' => $status['message']['endtime'],
				'code_status' => 1,
				'gengxin' => $status['message']['gengxin'],
			);
			cache_write('we7_wmall', $data);
			set_global_config('auth', $data);
		}
		$cache = cache_read('we7_wmall');
		if(empty($cache)) {
			$cache = get_global_config('auth');
		}
		$url = cloud_w_lala_update_url($data);
	}
	$familys = module_familys();
}

if($op == 'upgrade')  {
	$_W['page']['title'] = '系统更新';
	$cache = get_global_config('auth');
	if(empty($cache)) {
		imessage('请先进行授权验证', iurl('system/cloud/auth'), 'info');
	}
	if(!empty($_W['config']['setting']['development'])) {
		//imessage('更新前需要关闭开发者模式。关闭教程: <a href="https://denghuo.kf5.com/hc/kb/article/1002042/" target="_blank">https://denghuo.kf5.com/hc/kb/article/1002042/</a>', '', 'error');
	}
	if(!empty($_W['setting']['copyright']['status'])) {
		$url = url('system/site');
		imessage('更新时不能关闭微擎站点。现在去开启: <a href="'.$url.'" target="_blank">'.$url.'</a>', '', 'error');
	}
	if(checksubmit('submit')) {
		$upgrade = cloud_w_build_base();
		if(is_error($upgrade)) {
			imessage($upgrade['message'], 'refresh', 'error');
		}
		if($upgrade['upgrade']) {
			imessage("检测到新版本: <strong>{$upgrade['version']}-{$upgrade['release']}</strong>, 请立即更新.", 'refresh', 'success');
		} else {
			imessage('检查结果: 恭喜, 你的程序已经是最新版本.', 'refresh', 'info');
		}
	}
	$familys = module_familys();
	$now_family = $familys[MODULE_FAMILY]['title'];
	cache_load('we7_wmall_upgrade');
	if(!empty($_W['cache']['we7_wmall_upgrade'])) {
		$upgrade = $_W['cache']['we7_wmall_upgrade'];
	}
	if(empty($upgrade) || TIMESTAMP - $upgrade['lastupdate'] >= 3600 * 24 || $upgrade['upgrade']) {
		$upgrade = cloud_w_build_base();
		if(isset($upgrade['gengxin'])) {
			$cache['gengxin'] = $upgrade['gengxin'];
		}
		if(is_error($upgrade)) {
			if($upgrade['errno'] == -2) {
				imessage($upgrade['message'], iurl('system/cloud/upgrade'), 'info');
			}
			imessage($upgrade['message'], '', 'error');
		}
	}
}

if($op == 'process') {
	$step = trim($_GPC['step']) ? trim($_GPC['step']) : 'files';
	if ($step == 'files' && $_W['ispost']) {
		cloud_w_run_download();
	}
	if ($step == 'scripts' && $_W['ispost']) {
		cloud_w_run_script();
	}
	$packet = cloud_w_build_base();
	if (is_error($packet)) {
		imessage(error(-1, $packet['message']), '', 'ajax');
	}
	if($step == 'schemas' && $_W['ispost']) {
		cloud_w_run_schemas($packet);
	}
	if(!empty($packet) && !empty($packet['upgrade'])) {
		$schemas = array();
		if(!empty($packet['schemas'])) {
			foreach ($packet['schemas'] as $schema) {
				$schemas[] = substr($schema['tablename'], 4);
			}
		}
		$scripts = cloud_w_build_script($packet);
	} else {
		cache_delete('checkupgrade:we7_wmall');
		imessage('更新已完成', iurl('system/cloud/upgrade'), 'success');
	}
}

if($op == 'check') {
	$lock = cache_load('checkupgrade:we7_wmall');
	if(empty($lock) || (TIMESTAMP - 1800 > $lock['lastupdate'])) {
		$upgrade = cloud_w_build_base();
		if(!is_error($upgrade) && !empty($upgrade['upgrade'])) {
			$cache = get_global_config('auth');
			$upgrade = array('version' => $upgrade['version'], 'release' => $upgrade['release'], 'upgrade' => 1, 'lastupdate' => TIMESTAMP, 'gengxin' => $cache['gengxin']);
			cache_write('checkupgrade:we7_wmall', $upgrade);
			imessage($upgrade, '', 'ajax');
		} else {
			$upgrade = array('lastupdate' => TIMESTAMP);
			cache_write('checkupgrade:we7_wmall', $upgrade);
		}
	} else {
		imessage($lock, '', 'ajax');
	}
}
include itemplate('system/cloud');