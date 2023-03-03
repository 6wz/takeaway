<?php
defined("IN_IA") or exit( "Access Denied" );
load()->func("communication");
global $_W;
global $_GPC;
$ta = trim($_GPC["ta"]);
$key = 'AIzaSyB062x7b2UUvRIMLRIHJ8rFaZXGSkca89c' ;
if( $ta == "getAddressByLngLat" )
{
    $latitude = trim($_GPC["lat"]);
    $longitude = trim($_GPC["lng"]);
    $url = "https://maps.googleapis.com/maps/api/geocode/json?sensor=false&language=". 'en' . "&latlng=" . $latitude. "," .$longitude ;
    $result = ihttp_get($url);
    die($result) ;

}


