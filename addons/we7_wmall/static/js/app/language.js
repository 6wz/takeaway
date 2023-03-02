define(['tiny'], function(tiny) {
    var language = {};
    language.translation = function (key='' , params = {} ) {
        var string = key ;
        var  data = {} ;
        data.ta = 'translation' ;
        data.key  = key ;
        data.params = params ;
        $.ajax({
            type: "get",
            async:false,
            url: tiny.getUrl('wmall/internation/language'),
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
    return language ;
});

