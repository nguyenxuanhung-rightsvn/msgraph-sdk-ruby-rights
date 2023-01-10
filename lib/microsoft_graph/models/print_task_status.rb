require 'microsoft_kiota_abstractions'
require_relative './models'

module MicrosoftGraph::Models
    class PrintTaskStatus
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # A human-readable description of the current processing state of the printTask.
        @description
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The state property
        @state
        ## 
        ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @return a i_dictionary
        ## 
        def additional_data
            return @additional_data
        end
        ## 
        ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        ## @param value Value to set for the AdditionalData property.
        ## @return a void
        ## 
        def additional_data=(value)
            @additional_data = value
        end
        ## 
        ## Instantiates a new printTaskStatus and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a print_task_status
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return PrintTaskStatus.new
        end
        ## 
        ## Gets the description property value. A human-readable description of the current processing state of the printTask.
        ## @return a string
        ## 
        def description
            return @description
        end
        ## 
        ## Sets the description property value. A human-readable description of the current processing state of the printTask.
        ## @param value Value to set for the description property.
        ## @return a void
        ## 
        def description=(value)
            @description = value
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "description" => lambda {|n| @description = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "state" => lambda {|n| @state = n.get_enum_value(MicrosoftGraph::Models::PrintTaskProcessingState) },
            }
        end
        ## 
        ## Gets the @odata.type property value. The OdataType property
        ## @return a string
        ## 
        def odata_type
            return @odata_type
        end
        ## 
        ## Sets the @odata.type property value. The OdataType property
        ## @param value Value to set for the OdataType property.
        ## @return a void
        ## 
        def odata_type=(value)
            @odata_type = value
        end
        ## 
        ## Serializes information the current object
        ## @param writer Serialization writer to use to serialize this model
        ## @return a void
        ## 
        def serialize(writer)
            raise StandardError, 'writer cannot be null' if writer.nil?
            writer.write_string_value("description", @description)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_enum_value("state", @state)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the state property value. The state property
        ## @return a print_task_processing_state
        ## 
        def state
            return @state
        end
        ## 
        ## Sets the state property value. The state property
        ## @param value Value to set for the state property.
        ## @return a void
        ## 
        def state=(value)
            @state = value
        end
    end
end