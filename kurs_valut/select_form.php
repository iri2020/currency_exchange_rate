<?php
    include("connect.php");
    include("function.php");
    $s1="select * from kod_val";
    $q1=mysqli_query($linc,$s1);
    $n1=mysqli_num_rows($q1);
    $s="select * FROM kod_val INNER JOIN currency_page ON kod_val.id_val=currency_page.id_val ORDER BY id_page ASC";
    $q=mysqli_query($linc,$s);
    $n=mysqli_num_rows($q);
    echo "<select class='btn btn-info dropdown-toggle' name='type' id='my_select'>";
        echo "<option>--Выберите валюту для отслеживания--</option>";
        for($i=0; $i<$n1; $i++){
            $row1=mysqli_fetch_array($q1);
            $curs=get_currency($row1[7],3);
            echo "<option value='".$row1[0]."'>".$row1[2]."</option>";
        }
    echo "</select>";
?>
<br>
<br>
<input type="button" value="Добавить валюту" class="navbar-brand font-weight-bold btn btn-secondary  btn-lg" onclick="LoadVal()">
<br>
<br>
<div class="text-center  mx-auto border border-secondary rounded " id="curs_table">
    <table class="table table-hover table-sm" >
        <thead class="thead-dark">
            <tr>
                <th>Наименование валюты</th>
                <th>Name of the currency</th>
                <th>Номинал</th>
                <th>Буквенный код валюты</th>
                <th>Курс рубля</th>
                <th></th>
            </tr>
        </thead>
        <?
        for($i=0; $i<$n;$i++){
            $row=mysqli_fetch_array($q);
            $curse=get_currency($row[7],3);
            if($curse==0){
	            $curse_n="Курс рубля неизвестен";
            }else{
                $curse_n=$curse;
            }
            echo "<tr>";
                echo"<td> $row[2]</td>";
                echo"<td> $row[3]</td>";
                echo"<td> $row[4]</td>";
                echo"<td> $row[7]</td>";
                echo"<td> $curse_n </td>";
                echo"<td> <input type='button' value='Удалить' class='font-weight-bold btn btn-secondary  btn-sm' onclick='DelVal($row[0])'> </td>";
            echo "</tr>";
        }  
        ?>
            <tr id="ajaxDiv"></tr>

    </table>
</div>