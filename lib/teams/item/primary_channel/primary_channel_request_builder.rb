require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/channel'
require_relative '../../../models/o_data_errors/o_data_error'
require_relative '../../teams'
require_relative '../item'
require_relative './files_folder/files_folder_request_builder'
require_relative './i36f5b8477c6e0b8381f1fe57d51b36baa914f57f3b0c51db1cfca75bc34f6227/c1194251461b5b3c90c8db38ef36aff175d061ca4996b8ebe6fa684c673ff88b'
require_relative './members/item/conversation_member_item_request_builder'
require_relative './members/members_request_builder'
require_relative './messages/item/chat_message_item_request_builder'
require_relative './messages/messages_request_builder'
require_relative './microsoft_graph_complete_migration/microsoft_graph_complete_migration_request_builder'
require_relative './microsoft_graph_provision_email/microsoft_graph_provision_email_request_builder'
require_relative './microsoft_graph_remove_email/microsoft_graph_remove_email_request_builder'
require_relative './primary_channel'
require_relative './shared_with_teams/item/shared_with_channel_team_info_item_request_builder'
require_relative './shared_with_teams/shared_with_teams_request_builder'
require_relative './tabs/item/teams_tab_item_request_builder'
require_relative './tabs/tabs_request_builder'

module MicrosoftGraph
    module Teams
        module Item
            module PrimaryChannel
                ## 
                # Provides operations to manage the primaryChannel property of the microsoft.graph.team entity.
                class PrimaryChannelRequestBuilder
                    
                    ## 
                    # Provides operations to manage the filesFolder property of the microsoft.graph.channel entity.
                    def files_folder()
                        return MicrosoftGraph::Teams::Item::PrimaryChannel::FilesFolder::FilesFolderRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the members property of the microsoft.graph.channel entity.
                    def members()
                        return MicrosoftGraph::Teams::Item::PrimaryChannel::Members::MembersRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the messages property of the microsoft.graph.channel entity.
                    def messages()
                        return MicrosoftGraph::Teams::Item::PrimaryChannel::Messages::MessagesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the completeMigration method.
                    def microsoft_graph_complete_migration()
                        return MicrosoftGraph::Teams::Item::PrimaryChannel::MicrosoftGraphCompleteMigration::MicrosoftGraphCompleteMigrationRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the doesUserHaveAccess method.
                    def microsoft_graph_does_user_have_accessuser_id_user_id_tenant_id_tenant_id_user_principal_name_user_principal_name()
                        return MicrosoftGraph::Teams::Item::PrimaryChannel::I36f5b8477c6e0b8381f1fe57d51b36baa914f57f3b0c51db1cfca75bc34f6227::MicrosoftGraphDoesUserHaveAccessuserIdUserIdTenantIdTenantIdUserPrincipalNameUserPrincipalNameRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the provisionEmail method.
                    def microsoft_graph_provision_email()
                        return MicrosoftGraph::Teams::Item::PrimaryChannel::MicrosoftGraphProvisionEmail::MicrosoftGraphProvisionEmailRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the removeEmail method.
                    def microsoft_graph_remove_email()
                        return MicrosoftGraph::Teams::Item::PrimaryChannel::MicrosoftGraphRemoveEmail::MicrosoftGraphRemoveEmailRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Path parameters for the request
                    @path_parameters
                    ## 
                    # The request adapter to use to execute the requests.
                    @request_adapter
                    ## 
                    # Provides operations to manage the sharedWithTeams property of the microsoft.graph.channel entity.
                    def shared_with_teams()
                        return MicrosoftGraph::Teams::Item::PrimaryChannel::SharedWithTeams::SharedWithTeamsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the tabs property of the microsoft.graph.channel entity.
                    def tabs()
                        return MicrosoftGraph::Teams::Item::PrimaryChannel::Tabs::TabsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Url template to use to build the URL for the current request builder
                    @url_template
                    ## 
                    ## Instantiates a new PrimaryChannelRequestBuilder and sets the default values.
                    ## @param pathParameters Path parameters for the request
                    ## @param requestAdapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        raise StandardError, 'path_parameters cannot be null' if path_parameters.nil?
                        raise StandardError, 'request_adapter cannot be null' if request_adapter.nil?
                        @url_template = "{+baseurl}/teams/{team%2Did}/primaryChannel{?%24select,%24expand}"
                        @request_adapter = request_adapter
                        path_parameters = { "request-raw-url" => path_parameters } if path_parameters.is_a? String
                        @path_parameters = path_parameters if path_parameters.is_a? Hash
                    end
                    ## 
                    ## Delete navigation property primaryChannel for teams
                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of void
                    ## 
                    def delete(request_configuration=nil)
                        request_info = self.to_delete_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, nil, error_mapping)
                    end
                    ## 
                    ## Get the default channel, **General**, of a team.
                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of channel
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Channel.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Provides operations to manage the members property of the microsoft.graph.channel entity.
                    ## @param id Unique identifier of the item
                    ## @return a conversation_member_item_request_builder
                    ## 
                    def members_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["conversationMember%2Did"] = id
                        return MicrosoftGraph::Teams::Item::PrimaryChannel::Members::Item::ConversationMemberItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Provides operations to manage the messages property of the microsoft.graph.channel entity.
                    ## @param id Unique identifier of the item
                    ## @return a chat_message_item_request_builder
                    ## 
                    def messages_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["chatMessage%2Did"] = id
                        return MicrosoftGraph::Teams::Item::PrimaryChannel::Messages::Item::ChatMessageItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Update the navigation property primaryChannel in teams
                    ## @param body The request body
                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of channel
                    ## 
                    def patch(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_patch_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Channel.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Provides operations to manage the sharedWithTeams property of the microsoft.graph.channel entity.
                    ## @param id Unique identifier of the item
                    ## @return a shared_with_channel_team_info_item_request_builder
                    ## 
                    def shared_with_teams_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["sharedWithChannelTeamInfo%2Did"] = id
                        return MicrosoftGraph::Teams::Item::PrimaryChannel::SharedWithTeams::Item::SharedWithChannelTeamInfoItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Provides operations to manage the tabs property of the microsoft.graph.channel entity.
                    ## @param id Unique identifier of the item
                    ## @return a teams_tab_item_request_builder
                    ## 
                    def tabs_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["teamsTab%2Did"] = id
                        return MicrosoftGraph::Teams::Item::PrimaryChannel::Tabs::Item::TeamsTabItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Delete navigation property primaryChannel for teams
                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_delete_request_information(request_configuration=nil)
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :DELETE
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.add_request_options(request_configuration.options)
                        end
                        return request_info
                    end
                    ## 
                    ## Get the default channel, **General**, of a team.
                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_get_request_information(request_configuration=nil)
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :GET
                        request_info.headers.add('Accept', 'application/json')
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                            request_info.add_request_options(request_configuration.options)
                        end
                        return request_info
                    end
                    ## 
                    ## Update the navigation property primaryChannel in teams
                    ## @param body The request body
                    ## @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a request_information
                    ## 
                    def to_patch_request_information(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                        request_info.url_template = @url_template
                        request_info.path_parameters = @path_parameters
                        request_info.http_method = :PATCH
                        request_info.headers.add('Accept', 'application/json')
                        unless request_configuration.nil?
                            request_info.add_headers_from_raw_object(request_configuration.headers)
                            request_info.add_request_options(request_configuration.options)
                        end
                        request_info.set_content_from_parsable(self.request_adapter, "application/json", body)
                        return request_info
                    end

                    ## 
                    # Configuration for the request such as headers, query parameters, and middleware options.
                    class PrimaryChannelRequestBuilderDeleteRequestConfiguration
                        
                        ## 
                        # Request headers
                        attr_accessor :headers
                        ## 
                        # Request options
                        attr_accessor :options
                    end

                    ## 
                    # Get the default channel, **General**, of a team.
                    class PrimaryChannelRequestBuilderGetQueryParameters
                        
                        ## 
                        # Expand related entities
                        attr_accessor :expand
                        ## 
                        # Select properties to be returned
                        attr_accessor :select
                        ## 
                        ## Maps the query parameters names to their encoded names for the URI template parsing.
                        ## @param originalName The original query parameter name in the class.
                        ## @return a string
                        ## 
                        def get_query_parameter(original_name)
                            raise StandardError, 'original_name cannot be null' if original_name.nil?
                            case original_name
                                when "expand"
                                    return "%24expand"
                                when "select"
                                    return "%24select"
                                else
                                    return original_name
                            end
                        end
                    end

                    ## 
                    # Configuration for the request such as headers, query parameters, and middleware options.
                    class PrimaryChannelRequestBuilderGetRequestConfiguration
                        
                        ## 
                        # Request headers
                        attr_accessor :headers
                        ## 
                        # Request options
                        attr_accessor :options
                        ## 
                        # Request query parameters
                        attr_accessor :query_parameters
                    end

                    ## 
                    # Configuration for the request such as headers, query parameters, and middleware options.
                    class PrimaryChannelRequestBuilderPatchRequestConfiguration
                        
                        ## 
                        # Request headers
                        attr_accessor :headers
                        ## 
                        # Request options
                        attr_accessor :options
                    end
                end
            end
        end
    end
end
