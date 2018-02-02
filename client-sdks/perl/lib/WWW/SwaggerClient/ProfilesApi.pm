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
package WWW::SwaggerClient::ProfilesApi;

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
# profiles_documents_delete
#
# Delete the document.
# 
# @param string $end_user_token The logged in profile&#39;s token. (required)
{
    my $params = {
    'end_user_token' => {
        data_type => 'string',
        description => 'The logged in profile&#39;s token.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'profiles_documents_delete' } = { 
    	summary => 'Delete the document.',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub profiles_documents_delete {
    my ($self, %args) = @_;

    # verify the required parameter 'end_user_token' is set
    unless (exists $args{'end_user_token'}) {
      croak("Missing the required parameter 'end_user_token' when calling profiles_documents_delete");
    }

    # parse inputs
    my $_resource_path = '/profiles/documents';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

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

#
# profiles_documents_get
#
# Retrieve documents
# 
# @param string $end_user_token The logged in profile&#39;s token. (required)
{
    my $params = {
    'end_user_token' => {
        data_type => 'string',
        description => 'The logged in profile&#39;s token.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'profiles_documents_get' } = { 
    	summary => 'Retrieve documents',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub profiles_documents_get {
    my ($self, %args) = @_;

    # verify the required parameter 'end_user_token' is set
    unless (exists $args{'end_user_token'}) {
      croak("Missing the required parameter 'end_user_token' when calling profiles_documents_get");
    }

    # parse inputs
    my $_resource_path = '/profiles/documents';
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

#
# profiles_documents_patch
#
# Rename a document.
# 
# @param string $end_user_token The logged in profile&#39;s token. (required)
# @param RenameDocument $body  (required)
{
    my $params = {
    'end_user_token' => {
        data_type => 'string',
        description => 'The logged in profile&#39;s token.',
        required => '1',
    },
    'body' => {
        data_type => 'RenameDocument',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'profiles_documents_patch' } = { 
    	summary => 'Rename a document.',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub profiles_documents_patch {
    my ($self, %args) = @_;

    # verify the required parameter 'end_user_token' is set
    unless (exists $args{'end_user_token'}) {
      croak("Missing the required parameter 'end_user_token' when calling profiles_documents_patch");
    }

    # verify the required parameter 'body' is set
    unless (exists $args{'body'}) {
      croak("Missing the required parameter 'body' when calling profiles_documents_patch");
    }

    # parse inputs
    my $_resource_path = '/profiles/documents';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'PATCH';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # header params
    if ( exists $args{'end_user_token'}) {
        $header_params->{'end-user-token'} = $self->{api_client}->to_header_value($args{'end_user_token'});
    }

    my $_body_data;
    # body params
    if ( exists $args{'body'}) {
        $_body_data = $args{'body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# profiles_documents_post
#
# Upload a new document.
# 
# @param string $end_user_token The logged in profile&#39;s token. (required)
# @param UploadDocument $body  (required)
{
    my $params = {
    'end_user_token' => {
        data_type => 'string',
        description => 'The logged in profile&#39;s token.',
        required => '1',
    },
    'body' => {
        data_type => 'UploadDocument',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'profiles_documents_post' } = { 
    	summary => 'Upload a new document.',
        params => $params,
        returns => 'SuccessSuccessResponse',
        };
}
# @return SuccessSuccessResponse
#
sub profiles_documents_post {
    my ($self, %args) = @_;

    # verify the required parameter 'end_user_token' is set
    unless (exists $args{'end_user_token'}) {
      croak("Missing the required parameter 'end_user_token' when calling profiles_documents_post");
    }

    # verify the required parameter 'body' is set
    unless (exists $args{'body'}) {
      croak("Missing the required parameter 'body' when calling profiles_documents_post");
    }

    # parse inputs
    my $_resource_path = '/profiles/documents';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # header params
    if ( exists $args{'end_user_token'}) {
        $header_params->{'end-user-token'} = $self->{api_client}->to_header_value($args{'end_user_token'});
    }

    my $_body_data;
    # body params
    if ( exists $args{'body'}) {
        $_body_data = $args{'body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('SuccessSuccessResponse', $response);
    return $_response_object;
}

#
# profiles_get
#
# Request the logged in user's profile.
# 
# @param string $end_user_token The logged in profile&#39;s token. (required)
{
    my $params = {
    'end_user_token' => {
        data_type => 'string',
        description => 'The logged in profile&#39;s token.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'profiles_get' } = { 
    	summary => 'Request the logged in user&#39;s profile.',
        params => $params,
        returns => 'ProfileModel',
        };
}
# @return ProfileModel
#
sub profiles_get {
    my ($self, %args) = @_;

    # verify the required parameter 'end_user_token' is set
    unless (exists $args{'end_user_token'}) {
      croak("Missing the required parameter 'end_user_token' when calling profiles_get");
    }

    # parse inputs
    my $_resource_path = '/profiles';
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

    # header params
    if ( exists $args{'end_user_token'}) {
        $header_params->{'end-user-token'} = $self->{api_client}->to_header_value($args{'end_user_token'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ProfileModel', $response);
    return $_response_object;
}

#
# profiles_mobile_carriers_get
#
# Retrieve one or more mobile carriers. 
# 
# @param GetMobileCarrierBody $body A way to just get back the info for just one carrier. (required)
{
    my $params = {
    'body' => {
        data_type => 'GetMobileCarrierBody',
        description => 'A way to just get back the info for just one carrier.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'profiles_mobile_carriers_get' } = { 
    	summary => 'Retrieve one or more mobile carriers. ',
        params => $params,
        returns => 'MobileCarrierResponse',
        };
}
# @return MobileCarrierResponse
#
sub profiles_mobile_carriers_get {
    my ($self, %args) = @_;

    # verify the required parameter 'body' is set
    unless (exists $args{'body'}) {
      croak("Missing the required parameter 'body' when calling profiles_mobile_carriers_get");
    }

    # parse inputs
    my $_resource_path = '/profiles/mobile_carriers';
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

    my $_body_data;
    # body params
    if ( exists $args{'body'}) {
        $_body_data = $args{'body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('MobileCarrierResponse', $response);
    return $_response_object;
}

#
# profiles_optins_delete
#
# Marks the profile as opted out.
# 
# @param string $end_user_token The logged in profile&#39;s token. (required)
{
    my $params = {
    'end_user_token' => {
        data_type => 'string',
        description => 'The logged in profile&#39;s token.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'profiles_optins_delete' } = { 
    	summary => 'Marks the profile as opted out.',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub profiles_optins_delete {
    my ($self, %args) = @_;

    # verify the required parameter 'end_user_token' is set
    unless (exists $args{'end_user_token'}) {
      croak("Missing the required parameter 'end_user_token' when calling profiles_optins_delete");
    }

    # parse inputs
    my $_resource_path = '/profiles/optins';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

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

#
# profiles_optins_get
#
# Check if the profile has opted to being contacted by text.
# 
# @param string $end_user_token The logged in profile&#39;s token. (required)
{
    my $params = {
    'end_user_token' => {
        data_type => 'string',
        description => 'The logged in profile&#39;s token.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'profiles_optins_get' } = { 
    	summary => 'Check if the profile has opted to being contacted by text.',
        params => $params,
        returns => 'SuccessStatusResponse',
        };
}
# @return SuccessStatusResponse
#
sub profiles_optins_get {
    my ($self, %args) = @_;

    # verify the required parameter 'end_user_token' is set
    unless (exists $args{'end_user_token'}) {
      croak("Missing the required parameter 'end_user_token' when calling profiles_optins_get");
    }

    # parse inputs
    my $_resource_path = '/profiles/optins';
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

    # header params
    if ( exists $args{'end_user_token'}) {
        $header_params->{'end-user-token'} = $self->{api_client}->to_header_value($args{'end_user_token'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('SuccessStatusResponse', $response);
    return $_response_object;
}

#
# profiles_optins_patch
#
# Marks the profile as opted in.
# 
# @param string $end_user_token The logged in profile&#39;s token. (required)
{
    my $params = {
    'end_user_token' => {
        data_type => 'string',
        description => 'The logged in profile&#39;s token.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'profiles_optins_patch' } = { 
    	summary => 'Marks the profile as opted in.',
        params => $params,
        returns => 'SuccessSuccessResponse',
        };
}
# @return SuccessSuccessResponse
#
sub profiles_optins_patch {
    my ($self, %args) = @_;

    # verify the required parameter 'end_user_token' is set
    unless (exists $args{'end_user_token'}) {
      croak("Missing the required parameter 'end_user_token' when calling profiles_optins_patch");
    }

    # parse inputs
    my $_resource_path = '/profiles/optins';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'PATCH';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # header params
    if ( exists $args{'end_user_token'}) {
        $header_params->{'end-user-token'} = $self->{api_client}->to_header_value($args{'end_user_token'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('SuccessSuccessResponse', $response);
    return $_response_object;
}

#
# profiles_optins_post
#
# Create, and send an Optin Code.
# 
# @param string $end_user_token The logged in profile&#39;s token. (required)
{
    my $params = {
    'end_user_token' => {
        data_type => 'string',
        description => 'The logged in profile&#39;s token.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'profiles_optins_post' } = { 
    	summary => 'Create, and send an Optin Code.',
        params => $params,
        returns => 'PostOptinCodeResponse',
        };
}
# @return PostOptinCodeResponse
#
sub profiles_optins_post {
    my ($self, %args) = @_;

    # verify the required parameter 'end_user_token' is set
    unless (exists $args{'end_user_token'}) {
      croak("Missing the required parameter 'end_user_token' when calling profiles_optins_post");
    }

    # parse inputs
    my $_resource_path = '/profiles/optins';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # header params
    if ( exists $args{'end_user_token'}) {
        $header_params->{'end-user-token'} = $self->{api_client}->to_header_value($args{'end_user_token'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PostOptinCodeResponse', $response);
    return $_response_object;
}

#
# profiles_patch
#
# Update profile information.
# 
# @param string $end_user_token The logged in profile&#39;s token. (required)
# @param PatchProfile $body  (required)
{
    my $params = {
    'end_user_token' => {
        data_type => 'string',
        description => 'The logged in profile&#39;s token.',
        required => '1',
    },
    'body' => {
        data_type => 'PatchProfile',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'profiles_patch' } = { 
    	summary => 'Update profile information.',
        params => $params,
        returns => 'ProfileModel',
        };
}
# @return ProfileModel
#
sub profiles_patch {
    my ($self, %args) = @_;

    # verify the required parameter 'end_user_token' is set
    unless (exists $args{'end_user_token'}) {
      croak("Missing the required parameter 'end_user_token' when calling profiles_patch");
    }

    # verify the required parameter 'body' is set
    unless (exists $args{'body'}) {
      croak("Missing the required parameter 'body' when calling profiles_patch");
    }

    # parse inputs
    my $_resource_path = '/profiles';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'PATCH';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # header params
    if ( exists $args{'end_user_token'}) {
        $header_params->{'end-user-token'} = $self->{api_client}->to_header_value($args{'end_user_token'});
    }

    my $_body_data;
    # body params
    if ( exists $args{'body'}) {
        $_body_data = $args{'body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ProfileModel', $response);
    return $_response_object;
}

#
# profiles_post
#
# Create a new profile.
# 
# @param string $end_user_token The logged in profile&#39;s token. (required)
# @param CreateProfile $body  (required)
{
    my $params = {
    'end_user_token' => {
        data_type => 'string',
        description => 'The logged in profile&#39;s token.',
        required => '1',
    },
    'body' => {
        data_type => 'CreateProfile',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'profiles_post' } = { 
    	summary => 'Create a new profile.',
        params => $params,
        returns => 'SuccessSuccessResponse',
        };
}
# @return SuccessSuccessResponse
#
sub profiles_post {
    my ($self, %args) = @_;

    # verify the required parameter 'end_user_token' is set
    unless (exists $args{'end_user_token'}) {
      croak("Missing the required parameter 'end_user_token' when calling profiles_post");
    }

    # verify the required parameter 'body' is set
    unless (exists $args{'body'}) {
      croak("Missing the required parameter 'body' when calling profiles_post");
    }

    # parse inputs
    my $_resource_path = '/profiles';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # header params
    if ( exists $args{'end_user_token'}) {
        $header_params->{'end-user-token'} = $self->{api_client}->to_header_value($args{'end_user_token'});
    }

    my $_body_data;
    # body params
    if ( exists $args{'body'}) {
        $_body_data = $args{'body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('SuccessSuccessResponse', $response);
    return $_response_object;
}

1;
