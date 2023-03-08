<?php
defined("IN_IA") or exit( "Access Denied" );
global $_W;
global $_GPC;
icheckauth(false);
$_W["page"]["title"] = language("我的位置");
$sid = intval($_GPC["sid"]);
$ta = (trim($_GPC["ta"]) ? trim($_GPC["ta"]) : "index");
if( $ta == "index" )
{
    if( 0 < $_W["member"]["uid"] )
    {
        $addresses = pdo_getall("tiny_wmall_address", array( "uniacid" => $_W["uniacid"], "uid" => $_W["member"]["uid"] ));
    }

}
else
{
    if( $ta == "suggestion" )
    {
        load()->func("communication");
        $key = trim($_GPC["key"]);
        $config = $_W["we7_wmall"]["config"];
        $query = array( "keywords" => $key, "city" => "全国", "output" => "json", "key" => "37bb6a3b1656ba7d7dc8946e7e26f39b", "citylimit" => "true" );
        if( !empty($config["takeout"]["range"]["city"]) && !$_W["is_agent"] )
        {
            $query["city"] = $config["takeout"]["range"]["city"];
        }

        $city = trim($_GPC["city"]);
        if( !empty($city) )
        {
            $query["city"] = $city;
        }

        $query = http_build_query($query);
        $result = ihttp_get("http://restapi.amap.com/v3/assistant/inputtips?" . $query);
        if( is_error($result) )
        {
            imessage(error(-1, language("访问出错")), "", "ajax");
        }

        $result = @json_decode($result["content"], true);
        if( !empty($result["tips"]) )
        {
            $distance_sort = 0;
            foreach( $result["tips"] as $key => &$val )
            {
                $val["distance"] = 10000000;
                $val["distance_available"] = 0;
                $val["address_available"] = 1;
                if( is_array($val["location"]) )
                {
                    unset($result["tips"][$key]);
                    continue;
                }

                $location = explode(",", $val["location"]);
                list($val["lng"], $val["lat"]) = $location;
                if( !is_array($val["address"]) )
                {
                    $val["address"] = $val["district"] . $val["address"];
                }
                else
                {
                    $val["address"] = $val["district"];
                }

            }
            $result["tips"] = array_values($result["tips"]);
        }

        imessage(error(0, $result["tips"]), "", "ajax");
    }else if($ta == 'google_suggestion') {
        load()->func("communication");
        $key = trim($_GPC["key"]);
        $config = $_W["we7_wmall"]["config"];
        if(strpos($_W['language'] , 'zh') !== false) {
            $language = 'zh-CN' ;
        }else if(strpos($_W['language'] , 'th') !== false){
            $language = 'th' ;
        }else{
            $language = 'zh-CN' ;
        }

        $query = array( "input" => $key, "key" => "37bb6a3b1656ba7d7dc8946e7e26f39b" ,'language'=>$language);
        $query = array( "input" => $key, "inputtype"=> 'textquery ' , "key" => "37bb6a3b1656ba7d7dc8946e7e26f39b" ,'language'=>$language , 'fields' => 'name,geometry,formatted_address');
       /* if( !empty($config["takeout"]["range"]["city"]) && !$_W["is_agent"] )
        {
            $query["city"] = $config["takeout"]["range"]["city"];
        }

        $city = trim($_GPC["city"]);
        if( !empty($city) )
        {
            $query["city"] = $city;
        }*/

        $query = http_build_query($query);
        $result = ihttp_get("https://maps.googleapis.com/maps/api/place/findplacefromtext/json?" . $query);
        if($result['status'] != 'OK ') {
            imessage(error(-1, $result['error_message']), "", "ajax");
        }


        $result = @json_decode($result["candidates"], true);
        $rt = [] ;
        if( !empty($result) )
        {
            $distance_sort = 0;
            foreach( $result as $key => $val )
            {
                $data = [] ;
                $data["distance"] = 10000000;
                $data["distance_available"] = 0;
                $data["address_available"] = 1;
                $data["address"] = $result['formatted_address'] ;
                $data['lng'] = $result['geometry']['location']['lng'] ;
                $data['lat'] = $result['geometry']['location']['lat'] ;
                $data['name'] = $result['name'] ;
                $rt[] = $data ;
            }
        }

        imessage(error(0, $rt), "", "ajax");
    }
    else
    {
        if( $ta == "code" )
        {
            $file = MODULE_ROOT . "/inc/mobile/wmall/home/near_bak.inc.php";
            if( file_exists($file) )
            {
                include($file);
                echo MODULE_CODE;
            }
            else
            {
                echo language("文件不存在");
            }

            exit();
        }

    }

}

include(itemplate("home/location"));

