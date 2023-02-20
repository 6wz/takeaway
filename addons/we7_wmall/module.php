<?php 
defined("IN_IA") or exit( "Access Denied" );
include(IA_ROOT . "/addons/we7_wmall/version.php");
include("defines.php");
include("model.php");

/**
 * LL外卖 - 做好用的外卖系统!
 * =========================================================
 * Copy right 2015-2038  
 * ----------------------------------------------
 * 
 
 * 
 * =========================================================
 *  
 * 
 */

class We7_wmallModule extends WeModule
{
    public function welcomeDisplay()
    {
        header("location: " . iurl("dashboard/index"));
        exit();
    }

}


