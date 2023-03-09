<?php
defined("IN_IA") or exit( "Access Denied" );
global $_W;
global $_GPC;
$ta = (trim($_GPC["ta"]) ? trim($_GPC["ta"]) : "switch");

if($ta == 'switch'){
    $oldCurrency = $_W['currency'] ;
    if($oldCurrency == 'CNY') {
        $newCurrency = 'THB' ;
    }else{
        $newCurrency = 'CNY' ;
    }
    setcookie('currency' , $newCurrency) ;
    $_W['currency'] = $newCurrency ;
    $_W['currency_symbol'] = $_W['currency'] == 'THB' ? '฿' : '￥' ;
    imessage(error(0, "success"), "", "ajax");
}

