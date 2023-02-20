<?php
/**
 * 外送系统
 * @
 * @QQ 572912540
 * @url http://w.4tiaomao.com/
 */
defined('IN_IA') or exit('Access Denied');
global $_W, $_GPC;
mload()->model('store');
$_W['agentid'] = 0;
$categorys = store_fetchall_category();
ijson(error(0, $categorys));