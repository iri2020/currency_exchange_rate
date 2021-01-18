//функция обновления при загрузке страницы
$(document).ready(function () {
    update_content();
})
//функция добавления курса для отслеживания
function LoadVal(){
    var ajaxRequest;
    try{
        ajaxRequest = new XMLHttpRequest();
        }
    catch (e){
            try{
                ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
                }
                catch (e){
                    try {
                        ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
                        }
                        catch (e){
                            alert("Ваш браузер не поддерживает Ajax");
                        }
                }
        }
        
    var id_code=document.getElementById('my_select').value;
    ajaxRequest.onreadystatechange=function () {
        if (ajaxRequest.readyState==4){
            
            var arr=JSON.parse(ajaxRequest.responseText);

            for(var i=0; i<arr.length; i++){
            var s="<tr>";
            s+="<td>"+arr[i].Name+"</td>";
            s+="<td>"+arr[i].EngName+"</td>";
            s+="<td>"+arr[i].Nominal+"</td>";
            s+="<td>"+arr[i].ISO_Char_Code+"</td>";
            s+="<td>"+arr[i].curs+"</td>";
            s+="</tr>";
            }
            s+="</table>";
            
            var ajaxDisplay=document.getElementById('ajaxDiv');
            $.ajax({
                type: $(this).attr('method'),
                url: $(this).attr('action'),
                contentType: false,
                cache: false,
                processData: false,
                success: function (result) {
                    update_content();
                },
            });
            ajaxDisplay.innerHTML=s;
        }
    }
    

    ajaxRequest.open("GET","insert_ajax.php?id_code="+id_code ,true);

    

    ajaxRequest.send(null);
}
//функция удаления
function DelVal(id_code){
    var ajaxRequest;
    try{
        ajaxRequest = new XMLHttpRequest();
        }
    catch (e){
            try{
                ajaxRequest = new ActiveXObject("Msxml2.XMLHTTP");
                }
                catch (e){
                    try {
                        ajaxRequest = new ActiveXObject("Microsoft.XMLHTTP");
                        }
                        catch (e){
                            alert("Ваш браузер не поддерживает Ajax");
                        }
                }
        }

   
    ajaxRequest.onreadystatechange=function () {
        if (ajaxRequest.readyState==4){
            var ajaxDisplay=document.getElementById('ajaxDiv');
            ajaxDisplay.innerHTML=ajaxRequest.responseText;
        }
    }
    
    ajaxRequest.open("GET","delete_ajax.php?id_code="+id_code,true);
    $.ajax({
        //type: $(this).attr('method'),
        url: $(this).attr('action'),
        contentType: false,
        cache: false,
        processData: false,
        success: function (result) {
            update_content();
        },
    });
    ajaxRequest.send(null);
}
//функция обновления
function update_content() {

    $.ajax({
        type: 'post',
        url: 'select_form.php',
        contentType: false,
        cache: false,
        processData: false,
        success: function (result) {
            document.getElementById('cont').innerHTML = result;
        },
    });
}