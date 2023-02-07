require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../service_principals'
require_relative '../../item'
require_relative '../owners'
require_relative './item'
require_relative './microsoft_graph_app_role_assignment/microsoft_graph_app_role_assignment_request_builder'
require_relative './microsoft_graph_endpoint/microsoft_graph_endpoint_request_builder'
require_relative './microsoft_graph_service_principal/microsoft_graph_service_principal_request_builder'
require_relative './microsoft_graph_user/microsoft_graph_user_request_builder'
require_relative './ref/ref_request_builder'

module MicrosoftGraph::ServicePrincipals::Item::Owners::Item
    ## 
    # Builds and executes requests for operations under \servicePrincipals\{servicePrincipal-id}\owners\{directoryObject-id}
    class DirectoryObjectItemRequestBuilder
        
        ## 
        # Casts the previous resource to appRoleAssignment.
        def microsoft_graph_app_role_assignment()
            return MicrosoftGraph::ServicePrincipals::Item::Owners::Item::MicrosoftGraphAppRoleAssignment::MicrosoftGraphAppRoleAssignmentRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Casts the previous resource to endpoint.
        def microsoft_graph_endpoint()
            return MicrosoftGraph::ServicePrincipals::Item::Owners::Item::MicrosoftGraphEndpoint::MicrosoftGraphEndpointRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Casts the previous resource to servicePrincipal.
        def microsoft_graph_service_principal()
            return MicrosoftGraph::ServicePrincipals::Item::Owners::Item::MicrosoftGraphServicePrincipal::MicrosoftGraphServicePrincipalRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Casts the previous resource to user.
        def microsoft_graph_user()
            return MicrosoftGraph::ServicePrincipals::Item::Owners::Item::MicrosoftGraphUser::MicrosoftGraphUserRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # Path parameters for the request
        @path_parameters
        ## 
        # Provides operations to manage the collection of servicePrincipal entities.
        def ref()
            return MicrosoftGraph::ServicePrincipals::Item::Owners::Item::Ref::RefRequestBuilder.new(@path_parameters, @request_adapter)
        end
        ## 
        # The request adapter to use to execute the requests.
        @request_adapter
        ## 
        # Url template to use to build the URL for the current request builder
        @url_template
        ## 
        ## Instantiates a new DirectoryObjectItemRequestBuilder and sets the default values.
        ## @param pathParameters Path parameters for the request
        ## @param requestAdapter The request adapter to use to execute the requests.
        ## @return a void
        ## 
        def initialize(path_parameters, request_adapter)
            raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
            raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
            @url_template = "{+baseurl}/servicePrincipals/{servicePrincipal%2Did}/owners/{directoryObject%2Did}"
            @request_adapter = request_adapter
            path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
            @path_parameters = path_parameters if path_parameters.is_a? Hash
        end
    end
end
