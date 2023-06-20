=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.379.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'date'
require 'time'

module Plaid
  # Metadata about an event that occured while the user was going through Link
  class LinkEventMetadata
    # The error code that the user encountered. Emitted by `ERROR`, `EXIT`.
    attr_accessor :error_code

    # The error message that the user encountered. Emitted by: `ERROR`, `EXIT`.
    attr_accessor :error_message

    # The error type that the user encountered. Emitted by: `ERROR`, `EXIT`.
    attr_accessor :error_type

    # The status key indicates the point at which the user exited the Link flow. Emitted by: `EXIT`.
    attr_accessor :exit_status

    # The ID of the selected institution. Emitted by: all events.
    attr_accessor :institution_id

    # The name of the selected institution. Emitted by: all events.
    attr_accessor :institution_name

    # The query used to search for institutions. Emitted by: `SEARCH_INSTITUTION`.
    attr_accessor :institution_search_query

    # The request ID for the last request made by Link. This can be shared with Plaid Support to expedite investigation. Emitted by: all events.
    attr_accessor :request_id

    # If set, the user has encountered one of the following MFA types: code, device, questions, selections. Emitted by: `SUBMIT_MFA` and `TRANSITION_VIEW` when view_name is `MFA`.
    attr_accessor :mfa_type

    # The name of the view that is being transitioned to. Emitted by: `TRANSITION_VIEW`.
    attr_accessor :view_name

    # Either the verification method for a matched institution selected by the user or the Auth Type Select flow type selected by the user. If selection is used to describe selected verification method, then possible values are `phoneotp` or `password`;  if selection is used to describe the selected Auth Type Select flow, then possible values are `flow_type_manual` or `flow_type_instant`. Emitted by: `MATCHED_SELECT_VERIFY_METHOD` and `SELECT_AUTH_TYPE`.
    attr_accessor :selection

    # The name of the selected brand.
    attr_accessor :brand_name

    # The reason this institution was matched, which will be either `returning_user` or `routing_number`. Emitted by: `MATCHED_SELECT_INSTITUTION`.
    attr_accessor :match_reason

    # The routing number submitted by user at the micro-deposits routing number pane. Emitted by `SUBMIT_ROUTING_NUMBER`.
    attr_accessor :routing_number

    # The account number mask extracted from the user-provided account number. If the user-inputted account number is four digits long, `account_number_mask` is empty. Emitted by `SUBMIT_ACCOUNT_NUMBER`.
    attr_accessor :account_number_mask

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'error_code' => :'error_code',
        :'error_message' => :'error_message',
        :'error_type' => :'error_type',
        :'exit_status' => :'exit_status',
        :'institution_id' => :'institution_id',
        :'institution_name' => :'institution_name',
        :'institution_search_query' => :'institution_search_query',
        :'request_id' => :'request_id',
        :'mfa_type' => :'mfa_type',
        :'view_name' => :'view_name',
        :'selection' => :'selection',
        :'brand_name' => :'brand_name',
        :'match_reason' => :'match_reason',
        :'routing_number' => :'routing_number',
        :'account_number_mask' => :'account_number_mask'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'error_code' => :'String',
        :'error_message' => :'String',
        :'error_type' => :'String',
        :'exit_status' => :'String',
        :'institution_id' => :'String',
        :'institution_name' => :'String',
        :'institution_search_query' => :'String',
        :'request_id' => :'String',
        :'mfa_type' => :'String',
        :'view_name' => :'String',
        :'selection' => :'String',
        :'brand_name' => :'String',
        :'match_reason' => :'String',
        :'routing_number' => :'String',
        :'account_number_mask' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Plaid::LinkEventMetadata` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Plaid::LinkEventMetadata`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'error_code')
        self.error_code = attributes[:'error_code']
      end

      if attributes.key?(:'error_message')
        self.error_message = attributes[:'error_message']
      end

      if attributes.key?(:'error_type')
        self.error_type = attributes[:'error_type']
      end

      if attributes.key?(:'exit_status')
        self.exit_status = attributes[:'exit_status']
      end

      if attributes.key?(:'institution_id')
        self.institution_id = attributes[:'institution_id']
      end

      if attributes.key?(:'institution_name')
        self.institution_name = attributes[:'institution_name']
      end

      if attributes.key?(:'institution_search_query')
        self.institution_search_query = attributes[:'institution_search_query']
      end

      if attributes.key?(:'request_id')
        self.request_id = attributes[:'request_id']
      end

      if attributes.key?(:'mfa_type')
        self.mfa_type = attributes[:'mfa_type']
      end

      if attributes.key?(:'view_name')
        self.view_name = attributes[:'view_name']
      end

      if attributes.key?(:'selection')
        self.selection = attributes[:'selection']
      end

      if attributes.key?(:'brand_name')
        self.brand_name = attributes[:'brand_name']
      end

      if attributes.key?(:'match_reason')
        self.match_reason = attributes[:'match_reason']
      end

      if attributes.key?(:'routing_number')
        self.routing_number = attributes[:'routing_number']
      end

      if attributes.key?(:'account_number_mask')
        self.account_number_mask = attributes[:'account_number_mask']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @request_id.nil?
        invalid_properties.push('invalid value for "request_id", request_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @request_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          error_code == o.error_code &&
          error_message == o.error_message &&
          error_type == o.error_type &&
          exit_status == o.exit_status &&
          institution_id == o.institution_id &&
          institution_name == o.institution_name &&
          institution_search_query == o.institution_search_query &&
          request_id == o.request_id &&
          mfa_type == o.mfa_type &&
          view_name == o.view_name &&
          selection == o.selection &&
          brand_name == o.brand_name &&
          match_reason == o.match_reason &&
          routing_number == o.routing_number &&
          account_number_mask == o.account_number_mask
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [error_code, error_message, error_type, exit_status, institution_id, institution_name, institution_search_query, request_id, mfa_type, view_name, selection, brand_name, match_reason, routing_number, account_number_mask].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Plaid.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
