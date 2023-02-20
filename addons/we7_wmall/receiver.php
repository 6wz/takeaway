<?php 
defined("IN_IA") or exit( "Access Denied" );
include(IA_ROOT . "/addons/we7_wmall/version.php");
include("defines.php");
include("model.php");

/**
 * 外送系统
 * @淘宝店铺：翰翰飞网络科技* @QQ 572912540* @url http://w.4tiaomao.com/
 */

class We7_wmallModuleReceiver extends WeModuleReceiver
{
    public function receive()
    {
        global $_W;
    }

}


