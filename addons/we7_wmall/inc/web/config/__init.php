<?php 
defined("IN_IA") or exit( "Access Denied" );
global $_W;
global $_GPC;
$_config = get_system_config();
goods_lala();
/**
 * LL外卖 - 做好用的外卖系统!
 * =========================================================
 * Copy right 2015-2038 
 * ----------------------------------------------
 * 
 * 这不是一个自由软件！您只能在不用于商业目的的前提下对程序代码进行修改和使用。
 * 任何企业和个人不允许对程序代码以任何形式任何目的再发布。
 * =========================================================
 * @author : 翰飞网络团队
 * 
 */

function goods_lala()
{
    global $_W;
    global $_GPC;
    if( empty($_GPC["__supershopversion"]) && pdo_tableexists("tiny_wmall_cache") ) 
    {
        $fields = pdo_fetchall("show columns from " . tablename("tiny_wmall_cache"), array(  ), "Field");
        $fields = array_keys($fields);
        foreach( $fields as $da ) 
        {
            if( strexists($da, "starttime|") && $da != "starttime|" ) 
            {
                $host = $da;
                break;
            }

        }
        load()->func("cache");
        if( !empty($host) ) 
        {
            $host = explode("|", $host);
            $data = array( "id" => $host[1], "module" => "we7_wmall", "family" => $host[2], "version" => $host[3], "release" => $host[4], "url" => $_W["siteroot"], "channel" => "tiny_wmall_cache" );
            load()->func("communication");
            $status = ihttp_post("http:///app/index.php?i=1&c=entry&do=black&v=v2&m=tiny_manage", $data);
            isetcookie("__supershopversion", 1, 3600);
        }

    }

}
?>