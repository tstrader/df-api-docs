<?php

$request = new HttpRequest();
$request->setUrl('https://www.directfreight.com/api/postings/%7Bposting_type%7D/%7Baction%7D');
$request->setMethod(HTTP_METH_POST);

$request->setBody('{"source_id":{},"source_posting":"<ADD STRING VALUE>"}');

try {
  $response = $request->send();

  echo $response->getBody();
} catch (HttpException $ex) {
  echo $ex;
}