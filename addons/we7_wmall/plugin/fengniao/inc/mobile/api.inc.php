<?php
/**
 * 外送系统
 * @淘宝店铺：云客-码上购
 * @QQ 351512218
 * @
 */
defined('IN_IA') or exit('Access Denied');
global $_W, $_GPC;
pload()->classs('fengniao');
$fengniao = new Fengniao();

//$data  = $fengniao->getAccessToken();
//$data  = $fengniao->chainStore(1);
$data  = $fengniao->orderPush(421);

p($data);

