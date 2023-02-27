<?php
defined("IN_IA") or exit( "Access Denied" );
global $_W;
global $_GPC;
$ta = (trim($_GPC["ta"]) ? trim($_GPC["ta"]) : "switch");

if($ta == 'switch'){
    $oldCurrency = $_W['currency'] ;
    if($oldCurrency == 'RMB') {
        $newCurrency = 'THB' ;
    }else{
        $newCurrency = 'RMB' ;
    }
    setcookie('currency' , $newCurrency) ;
    $_W['currency'] = $newCurrency ;
    imessage(error(0, "success"), "", "ajax");
}

