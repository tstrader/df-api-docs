#!/usr/bin/perl
use Modern::Perl;
use HTTP::Request::JSON;
use LWP::UserAgent::JSON;
my $request = HTTP::Request::JSON->new(%s,
"PARAMETERS") https://www.directfreight.com/api/boards/%7Bboard_type%7D
my $browser = LWP::UserAgent::JSON->new();
my $response = $browser->request($request);
print $response->json_content;