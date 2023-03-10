<?php
defined("IN_IA") or exit( "Access Denied" );
global $_W;
global $_GPC;
$ta = (trim($_GPC["ta"]) ? trim($_GPC["ta"]) : "switch");
$oldCurrency = $_W['currency'] ;
if($ta == 'switch'){

    if($oldCurrency == 'RMB') {
        $newCurrency = 'THB' ;
    }else{
        $newCurrency = 'RMB' ;
    }
    setcookie('currency' , $newCurrency) ;
    $_W['currency'] = $newCurrency ;
    imessage(error(0, "success"), "", "ajax");
}else if($ta = 'exchange') {
    $value = $_GPC['value'] ;
    $newValue = exchange($value) ;
    die(json_encode(error(0 , $newValue))) ;
}

