<?php
defined('IN_IA') or exit('Access Denied');
include('init.php');

function p($data) {
	echo '<pre style="padding-left: 200px">';
	print_r($data);
	echo '</pre>';
}

class Mloader {
	private $cache = array();
	function func($name) {
		if (isset($this->cache['func'][$name])) {
			return true;
		}
		$file = IA_ROOT . '/addons/we7_wmall/function/' . $name . '.func.php';
		if (file_exists($file)) {
			include $file;
			$this->cache['func'][$name] = true;
			return true;
		} else {
			trigger_error('Invalid Helper Function /addons/we7_wmall/function/' . $name . '.func.php', E_USER_ERROR);
			return false;
		}
	}

	function model($name) {
		if (isset($this->cache['model'][$name])) {
			return true;
		}
		$file = IA_ROOT . '/addons/we7_wmall/model/' . $name . '.mod.php';
		if (file_exists($file)) {
			include $file;
			$this->cache['model'][$name] = true;
			return true;
		} else {
			trigger_error('Invalid Model /addons/we7_wmall/model/' . $name . '.mod.php', E_USER_NOTICE);
			return false;
		}
	}

	function classs($name) {
		if (isset($this->cache['class'][$name])) {
			return true;
		}
		$file = IA_ROOT . '/addons/we7_wmall/class/' . $name . '.class.php';
		if (file_exists($file)) {
			include $file;
			$this->cache['class'][$name] = true;
			return true;
		} else {
			trigger_error('Invalid Class /addons/we7_wmall/class/' . $name . '.class.php', E_USER_ERROR);
			return false;
		}
	}
}

function icache_load($name) {
	static $we7_wmall_cache;
	if (!empty($we7_wmall_cache[$name])) {
		return $we7_wmall_cache[$name];
	}
	$data = $we7_wmall_cache[$name] = icache_read($name);
	return $data;
}

function icache_read($name) {
	$cachedata = pdo_get('tiny_wmall_cache', array('name' => $name), array('value'));
	$cachedata = $cachedata['value'];
	if (empty($cachedata)) {
		return '';
	}
	$cachedata = iunserializer($cachedata);
	if (is_array($cachedata) && !empty($cachedata['expire']) && !empty($cachedata['data'])) {
		if ($cachedata['expire'] > TIMESTAMP) {
			return $cachedata['data'];
		} else {
			return '';
		}
	} else {
		return $cachedata;
	}
}

function icache_write($name, $data, $expire = 0) {
	if (empty($name) || !isset($data)) {
		return false;
	}
	$record = array();
	$record['name'] = $name;
	if (!empty($expire)) {
		$cache_data = array(
			'expire' => TIMESTAMP + $expire,
			'data' => $data
		);
	} else {
		$cache_data = $data;
	}
	$record['value'] = iserializer($cache_data);
	return pdo_insert('tiny_wmall_cache', $record, true);
}

function icache_delete($name) {
	$sql = 'DELETE FROM ' . tablename('tiny_wmall_cache') . ' WHERE `name`=:name';
	$params = array();
	$params[':name'] = $name;
	$result = pdo_query($sql, $params);
	return $result;
}

function icache_clean($prefix = '') {
	global $_W;
	if (empty($prefix)) {
		$sql = 'DELETE FROM ' . tablename('tiny_wmall_cache');
		$result = pdo_query($sql);
		if ($result) {
			unset($_W['cache']);
		}
	} else {
		$sql = 'DELETE FROM ' . tablename('tiny_wmall_cache') . ' WHERE `name` LIKE :name';
		$params = array();
		$params[':name'] = "{$prefix}:%";
		$result = pdo_query($sql, $params);
	}
	return $result;
}

function iwurl($segment, $params = array(), $script = './index.php?') {
	list($controller, $action, $do) = explode('/', $segment);
	$url = $script;
	if (!empty($controller)) {
		$url .= "c={$controller}&";
	}
	if (!empty($action)) {
		$url .= "a={$action}&";
	}
	if (!empty($do)) {
		$url .= "do={$do}&";
	}
	if (!empty($params)) {
		$queryString = http_build_query($params, '', '&');
		$url .= $queryString;
	}
	return $url;
}

function iurl($segment, $params = array(), $addhost = false) {
	global $_W;
	list($ctrl, $ac, $op, $ta) = explode('/', $segment);
	$params = array_merge(array('ctrl' => $ctrl, 'ac' => $ac, 'op' => $op, 'ta' => $ta, 'do' => 'web', 'm' => 'we7_wmall'), $params);
	$url = iwurl('site/entry', $params);
	if($_W['_controller'] == 'store' || $ctrl == 'store') {
		$params['i'] = $_W['uniacid'];
		$url = iwurl('site/entry', $params, './wmerchant.php?');
	} else if(defined('IN_AGENT') || $params['agent'] == 1) {
		unset($params['agent']);
		$params['i'] = $_W['uniacid'];
		$url = iwurl('site/entry', $params, './wagent.php?');
	}
	if($addhost) {
		$url = $_W['siteroot'] . 'web/' . substr($url, 2);
	}
	return $url;
}

function imurl($segment, $params = array(), $addhost = false) {
	global $_W;
	list($ctrl, $ac, $op, $ta) = explode('/', $segment);
	$basic = array('ctrl' => $ctrl, 'ac' => $ac, 'op' => $op, 'ta' => $ta, 'do' => 'mobile', 'm' => 'we7_wmall');
	$params = array_merge($basic, $params);
	$url = murl('entry', $params);
	if($addhost) {
		$oauth_host = $_W['siteroot'];
		if(!empty($_W['we7_wmall']['config']['oauth']['oauth_host'])) {
			$oauth_host = $_W['we7_wmall']['config']['oauth']['oauth_host'];
		}
		$oauth_host = rtrim($oauth_host, "/");
		$url = $oauth_host . '/app/' . substr($url, 2);
	}
	return $url;
}

function iaurl($segment, $params = array(), $addhost = false) {
	global $_W;
	list($ctrl, $ac, $op, $ta) = explode('/', $segment);
	$basic = array('op' => $op, 'ta' => $ta, 'do' => 'mobile', 'm' => 'we7_wmall', 'from' => 'vue');
	$params = array_merge($basic, $params);
	$str = '';
	if(uni_is_multi_acid()) {
		$str = "&j={$_W['acid']}";
	}
	$url = "./wxapp.php?i={$_W['uniacid']}{$str}&c=entry&";
	if (!empty($ctrl)) {
		$url .= "ctrl={$ctrl}&";
	}
	if (!empty($ac)) {
		$url .= "ac={$ac}&";
	}
	$queryString = http_build_query($params, '', '&');
	$url .= $queryString;
	if($addhost) {
		$oauth_host = $_W['siteroot'];
		if(!empty($_W['we7_wmall']['config']['oauth']['oauth_host'])) {
			$oauth_host = $_W['we7_wmall']['config']['oauth']['oauth_host'];
		}
		$oauth_host = rtrim($oauth_host, "/");
		$url = $oauth_host . '/app/' . substr($url, 2);
	}
	return $url;
}

function ivurl($segment, $params = array(), $addhost = false) {
	global $_W;
	$params = array_merge($params, array('i' => $_W['uniacid']));
	$query = http_build_query($params);
	$segment = trim($segment, "/");
	$url = "{$segment}?{$query}";
	if($addhost) {
		$oauth_host = $_W['siteroot'];
		if(!empty($_W['we7_wmall']['config']['oauth']['oauth_host'])) {
			$oauth_host = $_W['we7_wmall']['config']['oauth']['oauth_host'];
		}
		$oauth_host = rtrim($oauth_host, "/");
		$url = $oauth_host . '/addons/we7_wmall/template/vue/index.html?menu=#/' . trim($url, "/");
	}
	return $url;
}

function ifilter_url($params) {
	global $_W;
	if(empty($params)) {
		return '';
	}
	$query_arr = array();
	$parse = parse_url($_W['siteurl']);
	if(!empty($parse['query'])) {
		$query = $parse['query'];
		parse_str($query, $query_arr);
	}
	$params = explode(',', $params);
	foreach($params as $val) {
		if(!empty($val)) {
			$data = explode(':', $val);
			$query_arr[$data[0]] = trim($data[1]);
		}
	}
	$query_arr['page'] = 1;
	$query = http_build_query($query_arr);
	if($_W['_controller'] == 'store') {
		return './wmerchant.php?' . $query;
	} elseif(defined('IN_AGENT')) {
		return './wagent.php?' . $query;
	}
	return './index.php?' . $query;
}

function module_familys() {
	return array(
		'basic' => array(
			'title' => '???????????????',
			'css' => 'label label-success'
		),
		'errander' => array(
			'title' => '??????+??????',
			'css' => 'label label-success'
		),
		'errander_deliveryerApp' => array(
			'title' => '??????+??????+?????????app',
			'css' => 'label label-success'
		),
		'vip' => array(
			'title' => 'vip???',
			'css' => 'label label-success'
		),
		'wxapp' => array(
			'title' => '????????????',
			'css' => 'label label-success'
		),

	);
}

function score_format($score) {
	$score = array(
		'all' => intval($score),
		'half' => intval($score) != $score,
	);
	$score['gray'] = 5 - $score['all'] - $score['half'];
	$scores = array();
	for($i = 0; $i < $score['all']; $i++) {
		$scores[] = 'all';
	}
	for($i = 0; $i < $score['half']; $i++) {
		$scores[] = 'half';
	}
	for($i = 0; $i < $score['gray']; $i++) {
		$scores[] = 'gray';
	}
	return $scores;
}

/*
 * $type (1:?????????, 2:???????????????)
 * get_index_slide
 * */
function sys_fetch_slide($type = 'homeTop', $format = false) {
	global $_W;
	$slides = pdo_fetchall('select * from' . tablename('tiny_wmall_slide') .'where uniacid = :uniacid and agentid = :agentid and type = :type and status = 1 order by displayorder desc' ,array(':uniacid' => $_W['uniacid'], ':agentid' => $_W['agentid'], ':type' => $type));
	if($type == 'startpage') {
		shuffle($slides);
	}
	if($format) {
		foreach($slides as &$slide) {
			$slide['thumb'] = tomedia($slide['thumb']);
		}
	}
	return $slides;
}

function tpl_format($title, $ordersn, $orderstatus, $remark = '') {
	$send = array(
		'first' => array(
			'value' => $title,
			'color' => '#ff510'
		),
		'OrderSn' => array(
			'value' => $ordersn,
			'color' => '#ff510'
		),
		'OrderStatus' => array(
			'value' => $orderstatus,
			'color' => '#ff510'
		),
		'remark' => array(
			'value' => $remark,
			'color' => '#ff510'
		),
	);
	return $send;
}

function array_compare($key, $array) {
	$keys = array_keys($array);
	$keys[] = $key;
	asort($keys);
	$values = array_values($keys);
	$index = array_search($key, $values);
	if($index >= 0) {
		$now = $values[$index];
		$next = $values[$index + 1];
		if($now == $next) {
			$next = intval($next);
			return $array[$next];
		}
		$index = $values[$index - 1];
		return $array[$index];
	}
	return false;
}

function store_orderbys() {
	return array(
		'distance' => array(
			'title' => '????????????',
			'key' => 'distance',
			'val' => 'asc',
			'css' => 'icon-b distance',
			'icon' => 'location'
		),
		'sailed' => array(
			'title' => '????????????',
			'key' => 'sailed',
			'val' => 'desc',
			'css' => 'icon-b sailed-num',
			'icon' => 'hot_light'
		),
		'score' => array(
			'title' => '????????????',
			'key' => 'score',
			'val' => 'desc',
			'css' => 'icon-b score',
			'icon' => 'favor1'
		),
		'send_price' => array(
			'title' => '???????????????',
			'key' => 'send_price',
			'val' => 'asc',
			'css' => 'icon-b send-price',
			'icon' => 'moneybag'
		),
		'delivery_time' => array(
			'title' => '??????????????????',
			'key' => 'delivery_time',
			'val' => 'asc',
			'css' => 'icon-b delivery-time',
			'icon' => 'waimai'
		),
	);
}

function store_discounts() {
	return array(
		'mallNewMember' => array(
			'title' => '????????????',
			'key' => 'mallNewMember',
			'val' => 1,
			'css' => 'icon-b mallNewMember',
			'label' => 'label-danger'
		),
		'newMember' => array(
			'title' => '???????????????',
			'key' => 'newMember',
			'val' => 1,
			'css' => 'icon-b newMember',
			'label' => 'label-danger'
		),
		'discount' => array(
			'title' => '????????????',
			'key' => 'discount',
			'val' => 1,
			'css' => 'icon-b discount',
			'label' => 'label-danger'
		),
		'cashGrant' => array(
			'title' => '????????????',
			'key' => 'cashGrant',
			'val' => 1,
			'css' => 'icon-b cashGrant',
			'label' => 'label-success'
		),
		'grant' => array(
			'title' => '????????????',
			'key' => 'grant',
			'val' => 1,
			'css' => 'icon-b grant',
			'label' => 'label-success'
		),
		'deliveryFeeDiscount' => array(
			'title' => '???????????????',
			'key' => 'deliveryFeeDiscount',
			'val' => 1,
			'css' => 'icon-b deliveryFeeDiscount',
			'label' => 'label-deliveryFeeDiscount'
		),
		'delivery_price' => array(
			'title' => '????????????',
			'key' => 'delivery_price',
			'val' => 0,
			'css' => 'icon-b mian',
			'label' => 'label-warning'
		),
		'bargain' => array(
			'title' => '????????????',
			'key' => 'bargain',
			'val' => 1,
			'css' => 'icon-b bargain',
			'label' => 'label-primary'
		),
		'couponCollect' => array(
			'title' => '????????????',
			'key' => 'couponCollect',
			'val' => 1,
			'css' => 'icon-b couponCollect',
			'label' => 'label-success'
		),
		'couponGrant' => array(
			'title' => '????????????',
			'key' => 'couponGrant',
			'val' => 1,
			'css' => 'icon-b couponGrant',
			'label' => 'label-success'
		),
		'selfDelivery' => array(
			'title' => '????????????',
			'key' => 'selfDelivery',
			'val' => 1,
			'css' => 'icon-b selfDelivery',
			'label' => 'label-warning'
		),
		'invoice_status' => array(
			'title' => '???????????????',
			'key' => 'invoice_status',
			'val' => 1,
			'css' => 'icon-b invoice',
		),
	);
}

function store_all_activity() {
	return array(
		'mallNewMember' => array(
			'title' => '?????????????????????',
			'key' => 'mallNewMember',
			'label' => 'label-danger'
		),
		'newMember' => array(
			'title' => '?????????????????????',
			'key' => 'newMember',
			'label' => 'label-danger'
		),
		'discount' => array(
			'title' => '????????????',
			'key' => 'discount',
			'label' => 'label-danger'
		),
		'cashGrant' => array(
			'title' => '????????????',
			'key' => 'cashGrant',
			'label' => 'label-success'
		),
		'grant' => array(
			'title' => '????????????',
			'key' => 'grant',
			'label' => 'label-success'
		),
		'bargain' => array(
			'title' => '????????????',
			'key' => 'bargain',
			'label' => 'label-primary'
		),
		'couponCollect' => array(
			'title' => '????????????',
			'key' => 'couponCollect',
			'label' => 'label-success'
		),
		'couponGrant' => array(
			'title' => '????????????',
			'key' => 'couponGrant',
			'label' => 'label-success'
		),
		'selfDelivery' => array(
			'title' => '????????????',
			'key' => 'selfDelivery',
			'label' => 'label-warning'
		),
		'deliveryFeeDiscount' => array(
			'title' => '???????????????',
			'key' => 'deliveryFeeDiscount',
			'label' => 'label-warning'
		),
	);
}

function upload_file($file, $type, $name = '') {
	global $_W;
	if (empty($file['name'])) {
		return error(-1, '????????????, ??????????????????????????????');
	}
	if ($file['error'] != 0) {
		return error(-1, '????????????, ?????????.');
	}
	load()->func('file');
	$pathinfo = pathinfo($file['name']);
	$ext = strtolower($pathinfo['extension']);
	$basename = strtolower($pathinfo['basename']);
	if($name != '') {
		$basename = $name;
	}
	$path = "resource/{$type}s/{$_W['uniacid']}/";
	mkdirs(MODULE_ROOT . '/' . $path);
	if (!strexists($basename, $ext)) {
		$basename .= '.' . $ext;
	}

	if (!file_move($file['tmp_name'],  MODULE_ROOT . '/' . $path . $basename)) {
		return error(-1, '????????????????????????');
	}
	return $path . $basename;
}

function read_excel($filename) {
	include_once (IA_ROOT . '/framework/library/phpexcel/PHPExcel.php');
	$filename = MODULE_ROOT . '/' . $filename;
	if(!file_exists($filename)) {
		return error(-1, '??????????????????????????????');
	}
	$ext = pathinfo($filename, PATHINFO_EXTENSION);
	if($ext == 'xlsx') {
		$objReader = PHPExcel_IOFactory::createReader('Excel2007');
	} else {
		$objReader = PHPExcel_IOFactory::createReader('Excel5');
	}

	$objReader->setReadDataOnly(true);
	$objPHPExcel = $objReader->load($filename);
	$objWorksheet = $objPHPExcel->getActiveSheet();
	$highestRow = $objWorksheet->getHighestRow();
	$highestColumn = $objWorksheet->getHighestColumn();
	$highestColumnIndex = PHPExcel_Cell::columnIndexFromString($highestColumn);
	$excelData = array();
	for ($row = 1; $row <= $highestRow; $row++) {
		for ($col = 0; $col < $highestColumnIndex; $col++) {
			$excelData[$row][] =(string)$objWorksheet->getCellByColumnAndRow($col, $row)->getValue();
		}
	}
	return $excelData;
}

function sub_day($staday) {
	$value = TIMESTAMP - $staday;
	if($value < 0) {
		return '';
	} elseif($value >= 0 && $value < 59) {
		return ($value+1)."???";
	} elseif($value >= 60 && $value < 3600) {
		$min = intval($value / 60);
		return $min." ??????";
	} elseif($value >=3600 && $value < 86400) {
		$h = intval($value / 3600);
		return $h." ??????";
	} elseif($value >= 86400 && $value < 86400*30) {
		$d = intval($value / 86400);
		return intval($d)." ???";
	} elseif($value >= 86400*30 && $value < 86400*30*12) {
		$mon  = intval($value / (86400*30));
		return $mon." ???";
	} else {
		$y = intval($value / (86400*30*12));
		return $y." ???";
	}
}

function sub_time($time) {
	$rtime = date("m-d H:i", $time);
	$htime = date("H:i", $time);
	$time = time() - $time;
	if ($time < 60) {
		$str = '??????';
	} elseif ($time < 3600) {
		$min = floor($time / 60);
		$str = $min . '?????????';
	} elseif ($time < 86400) {
		$h = floor($time / (60 * 60));
		$str = $h.'????????? '. $htime;
	} elseif ($time < 259200) {
		$d = floor($time / 86400);
		if($d == 1) {
			$str = '?????? '. $rtime;
		} else {
			$str = '?????? '. $rtime;
		}
	} else {
		$str = $rtime;
	}
	return $str;
}

function transform_time($time) {
	$data = '';
	if ($time >= 0) {
		$days = intval($time / 86400);
		if($days > 0) {
			$data .= "{$days}???";
		}
		$remain = $time % 86400;
		$hours = intval($remain / 3600);
		if($hours > 0) {
			$data .= "{$hours}??????";
		}
		$remain = $remain % 3600;
		$minutes = intval($remain / 60);
		if($minutes > 0) {
			$data .= "{$minutes}??????";
		}
		$seconds = $remain % 60;
		if($seconds > 0 || empty($days) && empty($hours) && empty($minutes)) {
			$data .= "{$seconds}???";
		}
	}
	return $data;
}

function check_verifycode($mobile, $code) {
	global $_W;
	$isexist = pdo_fetch('select * from ' . tablename('uni_verifycode') . ' where uniacid = :uniacid and receiver = :receiver and verifycode = :verifycode and createtime >= :createtime', array(':uniacid' => $_W['uniacid'], ':receiver' => $mobile, ':verifycode' => $code, ':createtime' => time()-1800));
	if(!empty($isexist)) {
		return true;
	}
	return false;
}

function slog($type, $title, $params, $message) {
	global $_W;
	//wxtplNotice, managerappJpush, deliveryerappJpush, alidayuSms, alidayuCall, ordergrant, credit1Update, credit2Update, couponGrant, shareRedpacket
	if(empty($type)) {
		return error(-1, '????????????????????????');
	}
	if(empty($message)) {
		return error(-1, '????????????????????????');
	}
	$data = array(
		'uniacid' => $_W['uniacid'],
		'type' => $type,
		'title' => $title,
		'params' => iserializer($params),
		'message' => iserializer($message),
		'addtime' => TIMESTAMP,
	);
	pdo_insert('tiny_wmall_system_log', $data);
	return true;
}

function sys_notice_settle($sid, $type = 'clerk', $note= '') {
	global $_W;
	$store = store_fetch($sid, array('id', 'title', 'addtime', 'status', 'address'));
	if(empty($store)) {
		return error(-1, '???????????????');
	}
	$store['manager'] = store_manager($sid);
	$store_status = array(
		1 => '????????????',
		2 => '?????????',
		3 => '???????????????',
	);
	$acc = WeAccount::create($_W['acid']);
	if($type == 'clerk') {
		if(empty($store['manager']) || empty($store['manager']['openid'])) {
			return error(-1, '??????????????????????????????');
		}
		//???????????????
		$tips = "???{$store['title']}??????????????????{$_W['we7_wmall']['config']['mall']['title']}???????????????";
		$remark = array(
			"????????????: " . date('Y-m-d H: i', $store['addtime']),
			"????????????: " . date('Y-m-d H: i', time()),
			"????????????: " . $store['manager']['title'],
			$note
		);
		$remark = implode("\n", $remark);
		$send = array(
			'first' => array(
				'value' => $tips,
				'color' => '#ff510'
			),
			'keyword1' => array(
				'value' => $store['title'],
				'color' => '#ff510'
			),
			'keyword2' => array(
				'value' => $store_status[$store['status']],
				'color' => '#ff510'
			),
			'remark' => array(
				'value' => $remark,
				'color' => '#ff510'
			),
		);
		$status = $acc->sendTplNotice($store['manager']['openid'], $_W['we7_wmall']['config']['notice']['wechat']['settle_tpl'], $send);
		if(is_error($status)) {
			slog('wxtplNotice', "?????????????????????????????????????????????-??????:{$store['title']}", $send, $status['message']);
		}
	} elseif($type == 'manager') {
		$maneger = $_W['we7_wmall']['config']['manager'];
		if(empty($maneger['openid'])) {
			return error(-1, '??????????????????????????????');
		}
		$tips = "????????????{$maneger['nickname']}????????????????????????????????????????????????????????????????????????";
		$remark = array(
			"????????????: {$store['address']}",
			"??????????????????: {$store['manager']['mobile']}",
			$note
		);
		$remark = implode("\n", $remark);
		$send = array(
			'first' => array(
				'value' => $tips,
				'color' => '#ff510'
			),
			'keyword1' => array(
				'value' => $store['manager']['title'],
				'color' => '#ff510'
			),
			'keyword2' => array(
				'value' => $store['title'],
				'color' => '#ff510'
			),
			'keyword3' => array(
				'value' => date('Y-m-d H:i', time()),
				'color' => '#ff510',
			),
			'remark' => array(
				'value' => $remark,
				'color' => '#ff510'
			),
		);
		$status = $acc->sendTplNotice($maneger['openid'], $_W['we7_wmall']['config']['notice']['wechat']['settle_apply_tpl'], $send);
		if(is_error($status)) {
			slog('wxtplNotice', '?????????????????????????????????????????????', $send, $status['message']);
		}
	}
	return $status;
}

function ifile_put_contents($filename, $data) {
	global $_W;
	load()->func('file');
	$filename = MODULE_ROOT . '/' . $filename;
	mkdirs(dirname($filename));
	file_put_contents($filename, $data);
	@chmod($filename, $_W['config']['setting']['filemode']);
	return is_file($filename);
}

function sys_notice_store_getcash($sid, $getcash_log_id , $type = 'apply', $note = '') {
	global $_W;
	$store = store_fetch($sid, array('id', 'title', 'addtime', 'status', 'address'));
	if(empty($store)) {
		return error(-1, '???????????????');
	}
	$store['manager'] = store_manager($store['id']);
	if($type != 'borrow_openid') {
		$log = pdo_get('tiny_wmall_store_getcash_log', array('uniacid' => $_W['uniacid'], 'sid' => $sid, 'id' => $getcash_log_id));
		if(empty($log)) {
			return error(-1, '?????????????????????');
		}
	}
	$log['account'] = iunserializer($log['account']);
	$acc = WeAccount::create($_W['acid']);
	if($type == 'apply') {
		if(!empty($store['manager']) && !empty($store['manager']['openid'])) {
			//???????????????
			$tips = "??????,???{$store['manager']['nickname']}???,???{$store['title']}????????????????????????????????????,????????????????????????";
			$remark = array(
				"????????????: " . $store['title'],
				"????????????: ??????",
				"????????????: " . $log['account']['realname'],
				$note
			);
			$params = array(
				'first' => $tips,
				'money' => $log['final_fee'],
				'timet' => date('Y-m-d H:i', TIMESTAMP),
				'remark' => implode("\n", $remark)
			);
			$send = sys_wechat_tpl_format($params);
			$status = $acc->sendTplNotice($store['manager']['openid'], $_W['we7_wmall']['config']['notice']['wechat']['getcash_apply_tpl'], $send);
			if(is_error($status)) {
				slog('wxtplNotice', "???????????????????????????????????????-?????????{$store['title']}-{$store['manager']['nickname']}", $send, $status['message']);
			}
		}
		$maneger = $_W['we7_wmall']['config']['manager'];
		if(!empty($maneger['openid'])) {
			//?????????????????????
			$tips = "??????,???{$maneger['nickname']}???,???{$store['title']}???????????????,???????????????";
			$remark = array(
				"????????????: " . $store['title'],
				"????????????: ??????",
				"????????????: " . $log['account']['realname'],
				"???????????????: " . $log['get_fee'],
				"????????????: " . $log['take_fee'],
				"????????????: " . $log['final_fee'],
				$note
			);
			$params = array(
				'first' => $tips,
				'money' => $log['final_fee'],
				'timet' => date('Y-m-d H:i', TIMESTAMP),
				'remark' => implode("\n", $remark)
			);
			$send = sys_wechat_tpl_format($params);
			$status = $acc->sendTplNotice($maneger['openid'], $_W['we7_wmall']['config']['notice']['wechat']['getcash_apply_tpl'], $send);
			if(is_error($status)) {
				slog('wxtplNotice', '?????????????????????????????????????????????', $send, $status['message']);
			}
		}
	} elseif($type == 'success') {
		if(empty($store['manager']) || empty($store['manager']['openid'])) {
			return error(-1, '??????????????????????????????');
		}
		$tips = "??????,???{$store['manager']['nickname']}???,???{$store['title']}??????????????????????????????";
		$remark = array(
			"????????????: " . date('Y-m-d H:i', $log['endtime']),
			"????????????: " . $store['title'],
			"????????????: ??????",
			"????????????: " . $log['account']['realname'],
			'?????????????????????????????????????????????'
		);
		$params = array(
			'first' => $tips,
			'money' => $log['final_fee'],
			'timet' => date('Y-m-d H:i', $log['addtime']),
			'remark' => implode("\n", $remark)
		);
		$send = sys_wechat_tpl_format($params);
		$status = $acc->sendTplNotice($store['manager']['openid'], $_W['we7_wmall']['config']['notice']['wechat']['getcash_success_tpl'], $send);
		if(is_error($status)) {
			slog('wxtplNotice', "?????????????????????????????????????????????-?????????{$store['title']}-{$store['manager']['nickname']}", $send, $status['message']);
		}
	} elseif($type == 'fail') {
		if(empty($store['manager']) || empty($store['manager']['openid'])) {
			return error(-1, '??????????????????????????????');
		}
		$tips = "??????,???{$store['manager']['nickname']}???, ???{$store['title']}??????????????????????????????, ???????????????";
		$remark = array(
			"????????????: " . date('Y-m-d H:i', $log['endtime']),
			"????????????: " . $store['title'],
			"????????????: ??????",
			"????????????: " . $log['account']['realname'],
			'?????????????????????????????????????????????'
		);
		$params = array(
			'first' => $tips,
			'money' => $log['final_fee'],
			'time' => date('Y-m-d H:i', $log['addtime']),
			'remark' => implode("\n", $remark)
		);
		$send = sys_wechat_tpl_format($params);
		$status = $acc->sendTplNotice($store['manager']['openid'], $_W['we7_wmall']['config']['notice']['wechat']['getcash_fail_tpl'], $send);
		if(is_error($status)) {
			slog('wxtplNotice', "?????????????????????????????????????????????-?????????{$store['title']}-{$store['manager']['nickname']}", $send, $status['message']);
		}
	} elseif($type == 'borrow_openid') {
		if(empty($store['manager']) || empty($store['manager']['openid'])) {
			return error(-1, '??????????????????????????????');
		}
		$tips = "??????,???{$store['manager']['nickname']}???, ????????????????????????{$store['title']}???????????????????????????????????????????????????????????????,???????????????????????????????????????";
		$remark = array(
			"????????????: " . $store['title'],
			"????????????: ??????",
			'??????????????????????????????,??????????????????????????????????????????????????????????????????'
		);
		$params = array(
			'first' => $tips,
			'money' => $getcash_log_id,
			'timet' => date('Y-m-d H:i', TIMESTAMP),
			'remark' => implode("\n", $remark)
		);
		$send = sys_wechat_tpl_format($params);
		$payment_wechat = $_W['we7_wmall']['config']['payment']['wechat'];
		$url = imurl("wmall/auth/oauth", array('params' => base64_encode(json_encode($payment_wechat[$payment_wechat['type']]))), true);
		$status = $acc->sendTplNotice($store['manager']['openid'], $_W['we7_wmall']['config']['notice']['wechat']['getcash_apply_tpl'], $send, $url);
		if(is_error($status)) {
			slog('wxtplNotice', "??????????????????????????????????????????????????????-?????????{$store['title']}-{$store['manager']['nickname']}", $send, $status['message']);
		}
	} elseif($type == 'cancel') {
		if(empty($store['manager']) || empty($store['manager']['openid'])) {
			return error(-1, '??????????????????????????????');
		}
		$addtime = date('Y-m-d H:i', $log['addtime']);
		$tips = "??????,???{$store['manager']['nickname']}???,???{$store['title']}??????{$addtime}??????????????????????????????????????????";
		$remark = array(
			"????????????: " . $log['trade_no'],
			"????????????: " . $store['title'],
			"????????????: " . date('Y-m-d H:i', $log['endtime']),
			'????????????: ' . $note,
			'?????????????????????????????????????????????'
		);
		$params = array(
			'first' => $tips,
			'money' => $log['get_fee'],
			'time' => date('Y-m-d H:i', TIMESTAMP),
			'remark' => implode("\n", $remark)
		);
		$send = sys_wechat_tpl_format($params);
		$status = $acc->sendTplNotice($store['manager']['openid'], $_W['we7_wmall']['config']['notice']['wechat']['getcash_fail_tpl'], $send);
		if(is_error($status)) {
			slog('wxtplNotice', "???????????????????????????????????????????????????????????????-?????????{$store['title']}-{$store['manager']['nickname']}", $send, $status['message']);
		}
	}
	return $status;
}

function sys_wechat_tpl_format($params) {
	$send = array();
	foreach($params as $key => $param) {
		$send[$key] = array(
			'value' => $param,
			'color' => '#ff510',
		);
	}
	return $send;
}

/**
 * ?????????????????????????????????(???)
 * @param float $fP1Lat ??????(??????)
 * @param float $fP1Lon ??????(??????)
 * @param float $fP2Lat ??????(??????)
 * @param float $fP2Lon ??????(??????)
 * @return int
 */
function distanceBetween($longitude1, $latitude1, $longitude2, $latitude2) {
	$radLat1 = radian ( $latitude1 );
	$radLat2 = radian ( $latitude2 );
	$a = radian ( $latitude1 ) - radian ( $latitude2 );
	$b = radian ( $longitude1 ) - radian ( $longitude2 );
	$s = 2 * asin ( sqrt ( pow ( sin ( $a / 2 ), 2 ) + cos ( $radLat1 ) *
			cos ( $radLat2 ) * pow ( sin ( $b / 2 ), 2 ) ) );
	$s = $s * 6378.137; //????????????????????????????????????
	$s = round ( $s * 10000 ) / 10000; //???????????????(km)
	return $s * 1000; //?????????m
}

function radian($d) {
	return $d * 3.1415926535898 / 180.0;
}

function calculate_distance($origins, $destination, $type = 1) {
	$query = array(
		'key' => '37bb6a3b1656ba7d7dc8946e7e26f39b',
		'destination' => implode(',', $destination),
	);
	if($type == 2) {
		$query['origin'] = implode(',', $origins);
		$url = 'http://restapi.amap.com/v4/direction/bicycling?';
	} else {
		$query['origins'] = implode(',', $origins);
		$query['type'] = $type;
		$query['output'] = 'json';
		$url = 'http://restapi.amap.com/v3/distance?';
	}
	$query = http_build_query($query);
	load()->func('communication');
	$result = ihttp_get($url . $query);
	if(is_error($result)) {
		return $result;
	}
	$result = @json_decode($result['content'], true);
	if($type == 2) {
		if(!empty($result['errcode'])) {
			if($result['errcode'] == '30007') {
				$dis = calculate_distance($origins, $destination, 1);
				return $dis;
			}
			return error($result['errcode'], $result['errmsg']);
		}
		return round($result['data']['paths'][0]['distance'] / 1000, 3);
	} else {
		if($result['status'] != 1) {
			return error(-1, $result['info']);
		}
		if(round($result['results'][0]['distance'] / 1000, 3) < 0 && $type == 3) {
			$dis = calculate_distance($origins, $destination, 2);
			return $dis;
		}
		return round($result['results'][0]['distance'] / 1000, 3);
	}
}

function ip2city($ip = '') {
	global $_W;
	if(empty($ip)) {
		$ip = $_W['client_ip'];
	}
	$query = array(
		'key' => '37bb6a3b1656ba7d7dc8946e7e26f39b',
		'ip' => $ip,
		'output' => 'json',
	);
	$query = http_build_query($query);
	load()->func('communication');
	$result = ihttp_get('http://restapi.amap.com/v3/ip?' . $query);
	if(is_error($result)) {
		return error(-1, $result['info']);
	}
	$result = @json_decode($result['content'], true);
	if($result['status'] != 1) {
		return error(-1, $result['info']);
	}
	return $result;
}

function isPointInPolygon($polygon, $lnglat){
	$count = count($polygon);
	$px = $lnglat[1];
	$py = $lnglat[0];
	$flag = FALSE;
	for ($i = 0, $j = $count - 1; $i < $count; $j = $i, $i++) {
		$sy = $polygon[$i][0];
		$sx = $polygon[$i][1];
		$ty = $polygon[$j][0];
		$tx = $polygon[$j][1];
		if ($px == $sx && $py == $sy || $px == $tx && $py == $ty)
			return TRUE;
		if ($sy < $py && $ty >= $py || $sy >= $py && $ty < $py) {
			$x = $sx + ($py - $sy) * ($tx - $sx) / ($ty - $sy);
			if ($x == $px)
				return TRUE;
			if ($x > $px)
				$flag = !$flag;
		}
	}
	return $flag;
}

function array_order($value, $array) {
	$array[] = $value;
	asort($array);
	$array = array_values($array);
	$index = array_search($value, $array);
	return $array[$index + 1];
}

function sys_notice_deliveryer_getcash($deliveryer_id, $getcash_log_id , $type = 'apply', $note = '') {
	global $_W;
	$deliveryer = pdo_get('tiny_wmall_deliveryer',  array('uniacid' => $_W['uniacid'], 'id' => $deliveryer_id));
	if(empty($deliveryer)) {
		return error(-1, '??????????????????');
	}
	if($type != 'borrow_openid') {
		$log = pdo_get('tiny_wmall_deliveryer_getcash_log', array('uniacid' => $_W['uniacid'], 'deliveryer_id' => $deliveryer_id, 'id' => $getcash_log_id));
		if(empty($log)) {
			return error(-1, '?????????????????????');
		}
	}
	$acc = WeAccount::create($_W['acid']);
	if($type == 'apply') {
		if(!empty($deliveryer['openid'])) {
			//???????????????
			$tips = "??????,???{$deliveryer['title']}???, ???????????????????????????????????????,????????????????????????";
			$remark = array(
				"????????????: " . $deliveryer['title'],
				"????????????: " . $deliveryer['mobile'],
				"????????????: " . $log['take_fee'],
				"????????????: " . $log['final_fee'],
				$note
			);
			$params = array(
				'first' => $tips,
				'money' => $log['get_fee'],
				'timet' => date('Y-m-d H:i', TIMESTAMP),
				'remark' => implode("\n", $remark)
			);
			$send = sys_wechat_tpl_format($params);
			$status = $acc->sendTplNotice($deliveryer['openid'], $_W['we7_wmall']['config']['notice']['wechat']['getcash_apply_tpl'], $send);
			if(is_error($status)) {
				slog('wxtplNotice', "??????????????????????????????????????????:{$deliveryer['title']}", $send, $status['message']);
			}
		}

		$maneger = $_W['we7_wmall']['config']['manager'];
		if(!empty($maneger['openid'])) {
			//?????????????????????
			$tips = "??????,???{$maneger['nickname']}???,????????????{$deliveryer['title']}???????????????,???????????????";
			$remark = array(
				"????????????: " . $deliveryer['title'],
				"????????????: " . $deliveryer['mobile'],
				"????????????: " . $log['take_fee'],
				"????????????: " . $log['final_fee'],
				$note
			);
			$params = array(
				'first' => $tips,
				'money' => $log['get_fee'],
				'timet' => date('Y-m-d H:i', TIMESTAMP),
				'remark' => implode("\n", $remark)
			);
			$send = sys_wechat_tpl_format($params);
			$status = $acc->sendTplNotice($maneger['openid'], $_W['we7_wmall']['config']['notice']['wechat']['getcash_apply_tpl'], $send);
			if(is_error($status)) {
				slog('wxtplNotice', '????????????????????????????????????????????????', $send, $status['message']);
			}
		}
	} elseif($type == 'success') {
		if(empty($deliveryer['openid'])) {
			return error(-1, '????????????????????????');
		}
		$tips = "??????,???{$deliveryer['title']}???,?????????????????????????????????";
		$remark = array(
			"????????????: " . date('Y-m-d H:i', $log['endtime']),
			"????????????: " . $deliveryer['title'],
			"????????????: " . $log['take_fee'],
			"????????????: " . $log['final_fee'],
			'?????????????????????????????????????????????'
		);
		$params = array(
			'first' => $tips,
			'money' => $log['get_fee'],
			'timet' => date('Y-m-d H:i', $log['addtime']),
			'remark' => implode("\n", $remark)
		);
		$send = sys_wechat_tpl_format($params);
		$status = $acc->sendTplNotice($deliveryer['openid'], $_W['we7_wmall']['config']['notice']['wechat']['getcash_success_tpl'], $send);
		if(is_error($status)) {
			slog('wxtplNotice', "????????????????????????????????????????????????:{$deliveryer['title']}", $send, $status['message']);
		}
	} elseif($type == 'fail') {
		if(empty($deliveryer['openid'])) {
			return error(-1, '????????????????????????');
		}
		$tips = "??????,???{$deliveryer['title']}???, ?????????????????????????????????, ???????????????";
		$remark = array(
			"????????????: " . date('Y-m-d H:i', $log['endtime']),
			"????????????: " . $deliveryer['title'],
			"????????????: " . $log['take_fee'],
			"????????????: " . $log['final_fee'],
			'?????????????????????????????????????????????'
		);
		$params = array(
			'first' => $tips,
			'money' => $log['get_fee'],
			'time' => date('Y-m-d H:i', $log['addtime']),
			'remark' => implode("\n", $remark)
		);
		$send = sys_wechat_tpl_format($params);
		$status = $acc->sendTplNotice($deliveryer['openid'], $_W['we7_wmall']['config']['notice']['wechat']['getcash_fail_tpl'], $send);
		if(is_error($status)) {
			slog('wxtplNotice', "????????????????????????????????????????????????:{$deliveryer['title']}", $send, $status['message']);
		}
	} elseif($type == 'borrow_openid') {
		if(empty($deliveryer['openid'])) {
			return error(-1, '????????????????????????');
		}
		//???????????????
		$tips = "??????,???{$deliveryer['title']}???, ???????????????????????????.??????????????????????????????????????????,???????????????????????????????????????";
		$remark = array(
			"????????????: " . $deliveryer['title'],
			"????????????: " . $deliveryer['mobile'],
			'??????????????????????????????,??????????????????????????????????????????????????????????????????'
		);
		$params = array(
			'first' => $tips,
			'money' => $log['get_fee'],
			'timet' => date('Y-m-d H:i', TIMESTAMP),
			'remark' => implode("\n", $remark)
		);
		$send = sys_wechat_tpl_format($params);
		$payment_wechat = $_W['we7_wmall']['config']['payment']['wechat'];
		$url = imurl("wmall/auth/oauth", array('params' => base64_encode(json_encode($payment_wechat[$payment_wechat['type']]))), true);
		$status = $acc->sendTplNotice($deliveryer['openid'], $_W['we7_wmall']['config']['notice']['wechat']['getcash_apply_tpl'], $send, $url);
		if(is_error($status)) {
			slog('wxtplNotice', "?????????????????????????????????????????????????????????:{$deliveryer['title']}", $send, $status['message']);
		}
	} elseif($type == 'cancel') {
		if(empty($deliveryer['openid'])) {
			return error(-1, '????????????????????????');
		}
		$addtime = date('Y-m-d H:i', $log['addtime']);
		$tips = "??????,???{$deliveryer['title']}???,??????{$addtime}??????????????????????????????????????????";
		$remark = array(
			"????????????: " . $log['trade_no'],
			"????????????: " . date('Y-m-d H:i', $log['endtime']),
			"????????????: " . $note,
			'?????????????????????????????????????????????'
		);
		$params = array(
			'first' => $tips,
			'money' => $log['get_fee'],
			'time' => date('Y-m-d H:i', TIMESTAMP),
			'remark' => implode("\n", $remark)
		);
		$send = sys_wechat_tpl_format($params);
		$status = $acc->sendTplNotice($deliveryer['openid'], $_W['we7_wmall']['config']['notice']['wechat']['getcash_fail_tpl'], $send);
		if(is_error($status)) {
			slog('wxtplNotice', "??????????????????????????????????????????????????????????????????:{$deliveryer['title']}", $send, $status['message']);
		}
	}
	return $status;
}

function date2week($timestamp) {
	$weekdays = array('??????', '??????', '??????', '??????', '??????', '??????', '??????');
	$week = date('w', $timestamp);
	return $weekdays[$week];
}

function media_id2url($media_id) {
	mload()->classs('wxaccount');
	$acc = new WxAccount();
	$data = $acc->media_download($media_id);
	if(is_error($data)) {
		return $data;
	}
	return $data;
}

function ierror($result_code, $result_message = '??????????????????', $data = array('resultCode' => '')) {
	$result = array(
		'resultCode' => $result_code,
		'resultMessage' => $result_message,
		'data' => $data,
	);
	return $result;
}

function Jpush_deliveryer_send($title, $alert, $extras = array(), $audience = '', $platform = 'all') {
	global $_W;
	$config = $_W['we7_wmall']['config']['app']['deliveryer'];
	if(empty($config['push_key']) || empty($config['push_secret'])) {
		return error(-1, 'key???secret?????????');
	}
	if(empty($config['serial_sn'])) {
		return error(-1, 'app??????????????????');
	}
	$sound_router = array(
		'takeout' => array(
			'ordernew' => 'orderSound.wav',
			'orderassign' => 'assignSound.wav',
			'ordercancel' => 'cancelSound.wav',
			'orderDirectTransfer' => 'directTransfer.wav',
			'orderDirectTransferRefuse' => 'directTransferRefuse.wav',
		),
		'errander' => array(
			'ordernew' => 'erranderOrderSound.wav',
			'orderassign' => 'erranderAssignSound.wav',
			'ordercancel' => 'erranderCancelSound.wav',
			'orderDirectTransfer' => 'erranderDirectTransfer.wav',
			'orderDirectTransferRefuse' => 'erranderDirectTransferRefuse.wav',
		),
		'work_status_change' => array(
			'work_status_change' => 'workStatusSound.wav',
		),
	);
	$sound = $sound_router[$extras['redirect_type']][$extras['notify_type']];
	if(empty($sound)) {
		$sound = 'default';
	}
	$push_tag = trim($config['serial_sn']);
	if($config['android_version'] == 2) {
		$push_tag = $config['push_tags']['working'];
	}
	if(empty($audience)) {
		$audience = array(
			'tag' => array(
				$push_tag
			)
		);
	}
	$extras_orginal = array(
		'voice_play_nums' => 1,
		'voice_text' => '',
		'redirect_type' => 'order',
		'redirect_extra' => '',
	);
	$extras = array_merge($extras_orginal, $extras);
	$jpush_andriod = array(
		'platform' => 'android',
		'audience' => $audience,
		'notification' => array(
			'alert' => $alert,
			'android' => array(
				'alert' => $alert,
				'title' => $title,
				'builder_id' => 1,
				'extras' => $extras
			)
		),
	);
	$jpush_ios = array(
		'platform' => 'ios',
		'audience' => $audience,
		'notification' => array(
			'alert' => $alert,
			'ios' => array(
				'alert' => $alert,
				'sound' => $sound,
				'badge' => '+1',
				'extras' => $extras
			),
		),
		'options' => array(
			'apns_production' => 1
		),
	);
	load()->func('communication');
	$extra = array(
		'Authorization' => "Basic " . base64_encode("{$config['push_key']}:{$config['push_secret']}")
	);
	$response = ihttp_request('https://api.jpush.cn/v3/push', json_encode($jpush_andriod), $extra);
	$return = Jpush_response_parse($response);
	if(is_error($return)) {
		slog('deliveryerappJpush', '?????????App????????????(andriod)???????????????', $jpush_andriod, $return['message']);
	}
	if(empty($config['ios_build_type'])) {
		$extra = array('Authorization' => "Basic ZWQ4YzE3YmM3YjJlOWYzMGEyYWZlMThiOjIxZmM5ZjBiOGU4ODRmNDUzOTMxN2MyZQ==");
	}
	$response = ihttp_request('https://api.jpush.cn/v3/push', json_encode($jpush_ios), $extra);
	$return = Jpush_response_parse($response);
	if(is_error($return)) {
		slog('deliveryerappJpush', '?????????App????????????(ios)???????????????', $jpush_ios, $return['message']);
	}
	return true;
}

function Jpush_clerk_send($title, $alert, $extras = array(), $audience = '', $platform = 'all') {
	global $_W;
	$config = $_W['we7_wmall']['config']['app']['manager'];
	if(empty($config['push_key']) || empty($config['push_secret'])) {
		return error(-1, 'key???secret?????????');
	}
	if(empty($config['serial_sn'])) {
		return error(-1, 'app??????????????????');
	}
	$notify_routers = array(
		'place_order' => 'new',
		'remind' => 'remind',
	);
	$extras['resource'] = "{$_W['siteroot']}/addons/we7_wmall/resource/mp3/{$_W['uniacid']}/{$config['phonic'][$notify_routers[$extras['notify_type']]]}";

	$sound_router = array(
		'place_order' => 'widget/res/sound/orderSound.wav',
		'remind' => 'widget/res/sound/remindSound.wav',
		'cancel' => 'widget/res/sound/cancelSound.wav',
		'refund' => 'widget/res/sound/refundSound.wav',
	);
	$sound = $sound_router[$extras['notify_type']];
	if(empty($sound)) {
		$sound = 'default';
	}
	$tag = trim($config['serial_sn']);
	if(empty($audience)) {
		$audience = array(
			'tag' => array(
				$tag
			)
		);
	}
	$extras_orginal = array(
		'voice_play_type' => 2,
		'notify_type' => $notify_routers[$extras['notify_type']]
	);
	$extras = array_merge($extras, $extras_orginal);
	$jpush = array(
		'platform' => 'android',
		'audience' => $audience,
		'message' => array(
			'msg_content' => $alert,
			'title' => $title,
			'extras' => $extras
		),
	);
	load()->func('communication');
	$extra = array(
		'Authorization' => "Basic " . base64_encode("{$config['push_key']}:{$config['push_secret']}")
	);
	$response = ihttp_request('https://api.jpush.cn/v3/push', json_encode($jpush), $extra);
	$return = Jpush_response_parse($response);
	if(is_error($return)) {
		slog('managerappJpush', '??????App????????????(andriod)????????????', $jpush, $return['message']);
	}
	if(empty($config['ios_build_type'])) {
		$extra = array('Authorization' => "Basic ZDY1YTVmNzJjYWIyZjZlOTQzY2QwZDZkOjE4NTYyMTY4MWIwNTRlOTAxOTEzNjJkNg==");
	}
	$jpush_ios = array(
		'platform' => 'ios',
		'audience' => $audience,
		'notification' => array(
			'alert' => $alert,
			'ios' => array(
				'alert' => $alert,
				'sound' => $sound,
				'badge' => '+1',
				'extras' => $extras
			),
		),
		'options' => array(
			'apns_production' => 1
		),
	);
	$response = ihttp_request('https://api.jpush.cn/v3/push', json_encode($jpush_ios), $extra);
	$return = Jpush_response_parse($response);
	if(is_error($return)) {
		slog('managerappJpush', '??????App????????????(ios)????????????', $jpush_ios, $return['message']);
	}
	return true;
}

function Jpush_response_parse($response) {
	if(is_error($response)) {
		return $response;
	}
	$result = @json_decode($response['content'], true);
	if(!empty($result['error'])) {
		return error(-1, "????????????: {$result['error']['code']}, ????????????: {$result['error']['message']}");
	}
	return true;
}

function array_sort($array, $sort_key, $sort_order = SORT_ASC) {
	if(is_array($array)){
		foreach ($array as $row_array){
			$key_array[] = $row_array[$sort_key];
		}
		array_multisort($key_array, $sort_order, $array);
		return $array;
	}
	return false;
}

function array_depth($array) {
	if(!is_array($array)) return 0;
	$max_depth = 1;
	foreach ($array as $value) {
		if (is_array($value)) {
			$depth = array_depth($value) + 1;
			if ($depth > $max_depth) {
				$max_depth = $depth;
			}
		}
	}
	return $max_depth;
}

function multimerge(){
	$arrs = func_get_args();
	$merged = array();
	while($arrs){
		$array = array_shift($arrs);
		if(!$array){
			continue;
		}
		foreach ($array as $key => $value){
			if (is_string($key)){
				if (is_array($value) && array_key_exists($key, $merged) && is_array($merged[$key])){
					$merged[$key] = call_user_func(__FUNCTION__, $merged[$key], $value);
				}else{
					$merged[$key] = $value;
				}
			}else{
				$merged[] = $value;
			}
		}
	}
	return $merged;
}


function category_store_label() {
	global $_W;
	$data = pdo_fetchall('select id, title, alias,  color, is_system, displayorder from' . tablename('tiny_wmall_category') . ' where uniacid = :uniacid and type = :type order by is_system desc, displayorder desc', array(':uniacid' => $_W['uniacid'], ':type' => 'TY_store_label'), 'id');
	return $data;
}

function mktTransfers_get_openid($id, $openid, $money, $type = 'store') {
	return $openid;
}

function tocategory($category, $separator = ',') {
	global $_W;
	if(empty($category)) {
		return '';
	}
	$category_arr = explode('|', $category);
	$category_temp = array();
	if(!empty($category_arr)) {
		foreach($category_arr as $row) {
			$row = intval($row);
			if($row) {
				$category_temp[] = $row;
			}
		}
	}
	if(empty($category_temp)) {
		return '';
	}
	$category = implode(',', $category_temp);
	$data = pdo_fetchall('select id, title from ' . tablename('tiny_wmall_store_category') . " where uniacid = :uniacid and id in ({$category})", array(':uniacid' => $_W['uniacid']), 'id');
	if(empty($data)) {
		return $data;
	}
	$return = array();
	foreach($data as $da) {
		$return[] = $da['title'];
	}
	return implode($separator, $return);
}

function totime($times, $separator = ',') {
	$times = iunserializer($times);
	if(empty($times)) {
		return '';
	}
	$return = array();
	foreach($times as $time) {
		$return[] = "{$time['start_hour']}~{$time['end_hour']}";
	}
	return implode($separator, $return);
}
function toplateform($key, $all = false) {
	$plateform = array(
		'we7_wmall' => array(
			'css' => 'label label-default',
			'text' => '?????????',
			'color' => '',
		),
		'eleme' => array(
			'css' => 'label label-primary',
			'text' => '???????????????',
			'color' => '',
		),
		'meituan' => array(
			'css' => 'label label-warning',
			'text' => '????????????',
			'color' => '',
		),
	);
	if(empty($all)) {
		return $plateform[$key]['text'];
	} else {
		return $plateform[$key];
	}
}

function longurl2short($longurl) {
	load()->func('communication');
	$token = WeAccount::token();
	$url = "https://api.weixin.qq.com/cgi-bin/shorturl?access_token={$token}";
	$send = array(
		'action' => 'long2short',
		'long_url' => $longurl,
	);
	$response = ihttp_request($url, json_encode($send));
	if(is_error($response)) {
		return error(-1, "??????????????????????????????, ??????: {$response['message']}");
	}
	$result = @json_decode($response['content'], true);
	if(empty($result)) {
		return error(-1, "??????????????????, ?????????: {$response['meta']}");
	} elseif(!empty($result['errcode'])) {
		return error(-1, "????????????????????????, ????????????: {$result['errcode']}, ????????????: {$result['errmsg']}");
	}
	return $result['short_url'];
}

function flog($name, $message, $filename = 'we7_wmall', $clean = false) {
	$filename = IA_ROOT . "/addons/we7_wmall/resource/logs/{$filename}.txt";
	if($clean) {
		@unlink($filename);
	}
	load()->func('file');
	mkdirs(dirname($filename));
	$content = date('Y-m-d H:i:s') . " {$name} :??????==================\n";
	$content .= var_export($message, 1);
	$content .= "\n";
	$content .= date('Y-m-d H:i:s') . " {$name} :??????==================\n";
	$content .= "\n";
	$fp = fopen($filename, 'a+');
	fwrite($fp, $content);
	fclose($fp);
	return true;
}

function is_time_in_period($period, $time = 0) {
	if(!is_array($period)) {
		return true;
	}
	if(empty($time)) {
		$time = TIMESTAMP;
	}
	foreach($period as $val) {
		if(!is_array($val)) {
			$val = $period;
		}
		$val = array_values($val);
		$starttime = strtotime($val[0]);
		$endtime = strtotime($val[1]);
		if(!$starttime) {
			$starttime = $val[0];
			$endtime = $val[1];
		}
		//?????????????????????
		if($starttime >= $endtime) {
			$endtime = $endtime + 86399;
		}
		if($time >= $starttime && $time <= $endtime) {
			return true;
		}
	}
	return false;
}

function get_rand($proArr) {
	$result = '';
	$proSum = array_sum($proArr);
	foreach ($proArr as $key => $proCur) {
		$randNum = mt_rand(1, $proSum);
		if ($randNum <= $proCur) {
			$result = $key;
			break;
		} else {
			$proSum -= $proCur;
		}
	}
	unset ($proArr);
	return $result;
}

