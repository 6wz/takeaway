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

    $rt = ihttp_get($url) ;
    $address='' ;
    if(!empty($rt['results'][0])) {
        foreach ($rt['results'][0]['address_components'] as $data) {
            if(in_array('locality' , $data['types'])) {
                $address = $address.$data['long_name'] ;
            }else if(in_array('administrative_area_level_2' , $data['types'])){
                $address = $data['long_name'] .$address ;
            }
        }
    }

    $result["lng"] = $longitude;
    $result["location_y"] = $longitude;
    $result["lat"] = $latitude;
    $result["location_x"] = $latitude;
    $result["address"] = $address ;
    $result["locations"] = (string) $longitude . "," . $latitude;
    imessage(error(0, $result), "", "ajax");
    return 1;


}


