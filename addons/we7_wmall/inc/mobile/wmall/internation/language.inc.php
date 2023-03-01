<?php
defined("IN_IA") or exit( "Access Denied" );
global $_W;
global $_GPC;

$ta = $_GPC['ta'] ;

$oldLanguage = $_W['language'] ;

if($ta == 'get') {
    $filename = IA_ROOT . "/addons/we7_wmall/language/" . $oldLanguage . ".php";
    if(!is_file($filename)){
        $languageArr = [] ;
    }else{
        include($filename) ;
    }
    imessage(error(0, $languageArr), "", "ajax");

}else{
    if($oldLanguage == 'zh-cn') {
        $newLanguage = 'th-th' ;
    }else{
        $newLanguage = 'zh-cn' ;
    }
    setcookie('language' , $newLanguage) ;
    $_W['language'] = $newLanguage ;

    imessage(error(0, "success"), "", "ajax");
}




