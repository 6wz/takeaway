define(['tiny'], function(tiny) {
    var googlemap = {};
    googlemap.geolocation = function () {
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function(position) {
                var pos = {
                    lat: position.coords.latitude,
                    lng: position.coords.longitude ,
                };
               console.log(pos) ;
            }, function() {
                alert('无法定位当前地址') ;
            });
        } else {
            alert('无法定位当前地址') ;
        }
    };
    return googlemap ;
});

