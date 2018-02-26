<?php

$client = new http\Client;
$request = new http\Client\Request;

$body = new http\Message\Body;
$body->append('{"source_id":{},"source_posting":"<ADD STRING VALUE>"}');

$request->setRequestUrl('https://www.directfreight.com/api/postings/%7Blist_type%7D/%7Baction%7D');
$request->setRequestMethod('POST');
$request->setBody($body);

$client->enqueue($request)->send();
$response = $client->getResponse();

echo $response->getBody();