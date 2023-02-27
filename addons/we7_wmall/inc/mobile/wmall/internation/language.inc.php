<?php
defined("IN_IA") or exit( "Access Denied" );
global $_W;
global $_GPC;

$oldLanguage = $_W['language'] ;

if($oldLanguage == 'zh-cn') {
    $newLanguage = 'th-th' ;
}else{
    $newLanguage = 'zh-cn' ;
}
setcookie('language' , $newLanguage) ;
$_W['language'] = $newLanguage ;

imessage(error(0, "success"), "", "ajax");
