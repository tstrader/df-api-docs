#!/usr/bin/perl
use Modern::Perl;
use HTTP::Request::JSON;
use LWP::UserAgent::JSON;
my $request = HTTP::Request::JSON->new(%s,
"POST") https://www.directfreight.com/api/boards/notes
$request->content('{"body":"<ADD STRING VALUE>","entry_id":0,"title":"<ADD STRING VALUE>"}');
my $browser = LWP::UserAgent::JSON->new();
my $response = $browser->request($request);
print $response->json_content;