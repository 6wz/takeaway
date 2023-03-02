<?php
defined("IN_IA") or exit( "Access Denied" );
global $_W;
global $_GPC;

$ta = $_GPC['ta'] ;
$oldLanguage = $_W['language'] ;

if($ta == 'translation') {
    $key = $_GPC['key'] ;
    $params = $_GPC['params'] ;
    if(empty($params)){
        $params = [] ;
    }else{
        $params = json_decode(json_encode($params) , true) ;
    }
    $filename = IA_ROOT . "/addons/we7_wmall/language/" . $oldLanguage . ".php";
    if(!is_file($filename)){
        $languageArr = [] ;
    }else{
        include($filename) ;
    }
    $string = language($key , $params) ;
    die(json_encode(error(0 , $string))) ;


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




