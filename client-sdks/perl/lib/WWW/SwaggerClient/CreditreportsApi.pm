=begin comment

Direct Freight API

In order to use the Direct Freight API please first contact us to get an API Token. This token needs to be sent as a HTTP header argument in every request to our API.  api-token=\"SECRET KEY\"  Please keep your api-token a secret. If the token is compromised please contact us to get a new one.  This api token authenticates your application and gives it access to the API.  The API token should not be confused with the end-user-token. That token is given to you via the end_user_authentications endpoint when the user logs in. This token is needed in order to use certain features, and get certain sensitive information.  Both Tokens are stateless, and delivered via the HTTP headers.

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package WWW::SwaggerClient::CreditreportsApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::SwaggerClient::ApiClient;
use WWW::SwaggerClient::Configuration;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class   = shift;
    my (%self) = (
        'api_client' => WWW::SwaggerClient::ApiClient->instance,
        @_
    );

    #my $self = {
    #    #api_client => $options->{api_client}
    #    api_client => $default_api_client
    #}; 

    bless \%self, $class;

}


#
# credit_reports_get
#
# Request access to a credit report.
# 
# @param string $end_user_token The logged in user&#39;s token. (required)
# @param string $credit_report_id A special id returned with the board entries. (required)
# @param string $format Return format. Currently only supports html and json. (required)
{
    my $params = {
    'end_user_token' => {
        data_type => 'string',
        description => 'The logged in user&#39;s token.',
        required => '1',
    },
    'credit_report_id' => {
        data_type => 'string',
        description => 'A special id returned with the board entries.',
        required => '1',
    },
    'format' => {
        data_type => 'string',
        description => 'Return format. Currently only supports html and json.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'credit_reports_get' } = { 
    	summary => 'Request access to a credit report.',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub credit_reports_get {
    my ($self, %args) = @_;

    # verify the required parameter 'end_user_token' is set
    unless (exists $args{'end_user_token'}) {
      croak("Missing the required parameter 'end_user_token' when calling credit_reports_get");
    }

    # verify the required parameter 'credit_report_id' is set
    unless (exists $args{'credit_report_id'}) {
      croak("Missing the required parameter 'credit_report_id' when calling credit_reports_get");
    }

    # verify the required parameter 'format' is set
    unless (exists $args{'format'}) {
      croak("Missing the required parameter 'format' when calling credit_reports_get");
    }

    # parse inputs
    my $_resource_path = '/credit_reports';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # query params
    if ( exists $args{'credit_report_id'}) {
        $query_params->{'credit_report_id'} = $self->{api_client}->to_query_value($args{'credit_report_id'});
    }

    # query params
    if ( exists $args{'format'}) {
        $query_params->{'format'} = $self->{api_client}->to_query_value($args{'format'});
    }

    # header params
    if ( exists $args{'end_user_token'}) {
        $header_params->{'end-user-token'} = $self->{api_client}->to_header_value($args{'end_user_token'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

1;
