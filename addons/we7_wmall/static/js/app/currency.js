define(['tiny'], function(tiny) {
    var currency = {};
    currency.exchange = function (value= 0 ) {
        var string = value ;
        var  data = {} ;
        data.ta = 'exchange' ;
        data.value  = value ;
        $.ajax({
            type: "get",
            async:false,
            url: tiny.getUrl('wmall/internation/currency'),
            contentType: "application/json;charset=utf-8",
            data:data ,
            dataType: "json",
            success: function (data) {
               string =    data.message
            }, error: function (error) {
                console.log(error);
            }
        });
        return string;

    };
    return currency ;
});

