require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph::Models
    class PrintCertificateSigningRequest
        include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
        ## 
        # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
        @additional_data
        ## 
        # A base64-encoded pkcs10 certificate request. Read-only.
        @content
        ## 
        # The OdataType property
        @odata_type
        ## 
        # The base64-encoded public portion of an asymmetric key that is generated by the client. Read-only.
        @transport_key
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
        ## Instantiates a new printCertificateSigningRequest and sets the default values.
        ## @return a void
        ## 
        def initialize()
            @additional_data = Hash.new
        end
        ## 
        ## Gets the content property value. A base64-encoded pkcs10 certificate request. Read-only.
        ## @return a string
        ## 
        def content
            return @content
        end
        ## 
        ## Sets the content property value. A base64-encoded pkcs10 certificate request. Read-only.
        ## @param value Value to set for the content property.
        ## @return a void
        ## 
        def content=(value)
            @content = value
        end
        ## 
        ## Creates a new instance of the appropriate class based on discriminator value
        ## @param parseNode The parse node to use to read the discriminator value and create the object
        ## @return a print_certificate_signing_request
        ## 
        def self.create_from_discriminator_value(parse_node)
            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
            return PrintCertificateSigningRequest.new
        end
        ## 
        ## The deserialization information for the current model
        ## @return a i_dictionary
        ## 
        def get_field_deserializers()
            return {
                "content" => lambda {|n| @content = n.get_string_value() },
                "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                "transportKey" => lambda {|n| @transport_key = n.get_string_value() },
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
        ## @param value Value to set for the odata_type property.
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
            writer.write_string_value("content", @content)
            writer.write_string_value("@odata.type", @odata_type)
            writer.write_string_value("transportKey", @transport_key)
            writer.write_additional_data(@additional_data)
        end
        ## 
        ## Gets the transportKey property value. The base64-encoded public portion of an asymmetric key that is generated by the client. Read-only.
        ## @return a string
        ## 
        def transport_key
            return @transport_key
        end
        ## 
        ## Sets the transportKey property value. The base64-encoded public portion of an asymmetric key that is generated by the client. Read-only.
        ## @param value Value to set for the transport_key property.
        ## @return a void
        ## 
        def transport_key=(value)
            @transport_key = value
        end
    end
end
