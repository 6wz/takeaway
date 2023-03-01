define(['tiny'], function(tiny) {
    var language = {};
    language.translation = function (key='' , params = {} , id='') {
        $.post(tiny.getUrl('wmall/internation/language'), {"ta":"get"}, function(data){
            var result = $.parseJSON(data);
            languageData = result.message.message ;
            if(typeof languageData[key] == 'undefined') {
                string = key
            }else{
                string = languageData[key]
            }
            if(JSON.stringify (params) != "{}" ){
               for (let k in params) {
                   string = string.replace('{'+k+'}' , params[k])
               }
            }
            if(id != ''){
                $("#"+id) .html(string) ;
            }
        });
    };
    return language ;
});

