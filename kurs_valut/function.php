<?php
//функция импорта курса из файла ЦБ
function get_currency($currency_code) {

	$date = date('d/m/Y'); // Текущая дата
    $file_currency_cache = __DIR__.'/XML_daily.asp';

    $date_insert=date ("d.m.Y H:i:s", filectime($file_currency_cache));//дата создания файла с данными о курсе
    $date24=date("d.m.Y H:i:s", strtotime("+24 hour", strtotime($date_insert)));//дата 24 часа после создания

    if($date>= $date24 ){
    unlink('XML_daily.asp');
    }

	if(!is_file($file_currency_cache) ) {

		$ch = curl_init();

		curl_setopt($ch, CURLOPT_URL, 'https://www.cbr.ru/scripts/XML_daily.asp?date_req='.$date);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); 
		curl_setopt($ch, CURLOPT_HEADER, 0);

		$out = curl_exec($ch);

		curl_close($ch);

		file_put_contents($file_currency_cache, $out);

	}

	$content_currency = simplexml_load_file($file_currency_cache);

	if($content_currency->xpath('Valute[CharCode="'.$currency_code.'"]')==null){
        return "0";
    }else{
        return number_format(str_replace(',', '.', $content_currency->xpath('Valute[CharCode="'.$currency_code.'"]')[0]->Value),3);
    }
}
?>