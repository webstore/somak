

function loadWebpage(pageId) {
    
    var baseUrl = $("#base_url").val();
    $.ajax({
        type: "POST",
        url: baseUrl  + "/administrator/ajaxloadpage",
        data: {webpage_id: pageId}
    })
    .done(function(responsData) {
        if(responsData.length <= 0){
             $("#update_content").fadeOut();
            return false;
        }
        else{
            $("#update_content").fadeIn();
            var obj = $.parseJSON(responsData);
            $("#WebPageId_edit").val(obj.id);
            $("#WebPageLabel_edit").val(obj.page_label);
            $("#WebpageMetaT").val(obj.meta_t);
            $("#WebpageMetaD").val(obj.meta_d);
            $("#WebpageMetaK").val(obj.meta_k);
            $("#WebpageUrlinput").val(obj.urlinput);
            $("#elm2").text(obj.text);
             
            //tinyMCE.execInstanceCommand("elm2","mceInsertContent",false,obj.text);
            tinyMCE.get('elm2').setContent(obj.text);


            if(obj.is_home=='1')
                $("#WebpageIsHome").prop('checked', true);
            else
                $("#WebpageIsHome").prop('checked', false);
        }
    });
}