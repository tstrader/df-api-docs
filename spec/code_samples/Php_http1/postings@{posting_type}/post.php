<?php

$request = new HttpRequest();
$request->setUrl('https://www.directfreight.com/api/postings/%7Bposting_type%7D');
$request->setMethod(HTTP_METH_POST);

$request->setBody('{"comment":{},"custom_id":{},"destination_city":{},"destination_state":{},"height":{},"length":{},"load_size":{},"origin_city":{},"origin_state":{},"other_trailer_types":{},"pay_rate":{},"posting_id":0,"receive_date":{},"ship_date":{},"trailer_type":{},"weight":{},"width":{}}');

try {
  $response = $request->send();

  echo $response->getBody();
} catch (HttpException $ex) {
  echo $ex;
}