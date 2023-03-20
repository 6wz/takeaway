<?php
defined("IN_IA") or exit( "Access Denied" );
load()->func("communication");
global $_W;
global $_GPC;
$ta = trim($_GPC["ta"]);
$key = 'AIzaSyByRvY9T7foo61ybQ8f1M2RgHj9ivoQZhY' ;
if( $ta == "getAddressByLngLat" )
{
    $latitude = trim($_GPC["lat"]);
    $longitude = trim($_GPC["lng"]);
    $url = "https://maps.googleapis.com/maps/api/geocode/json?latlng=".$latitude.",".$longitude."&key={$key}&language=".$_W['language'] ;

    //$rt = @json_decode(file_get_contents($url) , true );

    $rt = @json_decode(file_get_contents('example.json') , true) ;

    $address='' ;

    if(!empty($rt['results'][0])) {
        $formatted_address = $rt['results'][0]['formatted_address'] ;
        $formatted_address_arr = explode("邮政编码:" ,$formatted_address) ;
        $address = $formatted_address_arr[0] ;
    }


    $result["lng"] = $longitude;
    $result["location_y"] = $longitude;
    $result["lat"] = $latitude;
    $result["location_x"] = $latitude;
    $result["address"] = $address ;
    $result["locations"] = (string) $longitude . "," . $latitude;
    imessage(error(0, $result), "", "ajax");
    return 1;


}else if($ta == 'google_suggestion') {
    load()->func("communication");
    $data = trim($_GPC["key"]);
    if(strpos($_W['language'] , 'zh') !== false) {
        $language = 'zh-CN' ;
    }else if(strpos($_W['language'] , 'th') !== false){
        $language = 'th' ;
    }else{
        $language = 'zh-CN' ;
    }


    $query = array( "query" => $data , "key" => $key ,'language'=>$language);
    $query = http_build_query($query);
    $url = "https://maps.googleapis.com/maps/api/place/textsearch/json?".$query ;
    //$rt = @json_decode(file_get_contents($url) , true );

    $rt = @json_decode(file_get_contents('example2.json') , true) ;

    if(!empty($rt['results'])) {
        foreach( $rt['results'] as $key => $val )
        {
            $data = [] ;
            $data["distance"] = 10000000;
            $data["distance_available"] = 0;
            $data["address_available"] = 1;
            $data["address"] = $val['formatted_address'] ;
            $data['lng'] = $val['geometry']['location']['lng'] ;
            $data['lat'] = $val['geometry']['location']['lat'] ;
            $data['name'] = $val['name'] ;
            $result[] = $data ;
        }
    }
    imessage(error(0, $result), "", "ajax");
}


