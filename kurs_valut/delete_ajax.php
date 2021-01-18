<?php 
    include ('connect.php');
        

    $id_code = $_GET['id_code'];
    
   /*Запрос на удаление необходимых валют */
    $delete="delete from currency_page WHERE id_val='$id_code'";
    $result=mysqli_query($linc,$delete);

    echo ($rezult);

?>