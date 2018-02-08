<?php

$client = new http\Client;
$request = new http\Client\Request;

$request->setRequestUrl('https://www.directfreight.com/api/billings');
$request->setRequestMethod('GET');
$request->setQuery(new http\QueryString(array(
  'promo_code' => 'SOME_STRING_VALUE'
)));

$client->enqueue($request)->send();
$response = $client->getResponse();

echo $response->getBody();