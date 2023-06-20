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
  # The webhook of type `LIABILITIES` and code `DEFAULT_UPDATE` will be fired when new or updated liabilities have been detected on a liabilities item.
  class LiabilitiesDefaultUpdateWebhook
    # `LIABILITIES`
    attr_accessor :webhook_type

    # `DEFAULT_UPDATE`
    attr_accessor :webhook_code

    # The `item_id` of the Item associated with this webhook, warning, or error
    attr_accessor :item_id

    attr_accessor :error

    # An array of `account_id`'s for accounts that contain new liabilities.'
    attr_accessor :account_ids_with_new_liabilities

    # An object with keys of `account_id`'s that are mapped to their respective liabilities fields that changed.  Example: `{ \"XMBvvyMGQ1UoLbKByoMqH3nXMj84ALSdE5B58\": [\"past_amount_due\"] }` 
    attr_accessor :account_ids_with_updated_liabilities

    attr_accessor :environment

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'webhook_type' => :'webhook_type',
        :'webhook_code' => :'webhook_code',
        :'item_id' => :'item_id',
        :'error' => :'error',
        :'account_ids_with_new_liabilities' => :'account_ids_with_new_liabilities',
        :'account_ids_with_updated_liabilities' => :'account_ids_with_updated_liabilities',
        :'environment' => :'environment'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'webhook_type' => :'String',
        :'webhook_code' => :'String',
        :'item_id' => :'String',
        :'error' => :'PlaidError',
        :'account_ids_with_new_liabilities' => :'Array<String>',
        :'account_ids_with_updated_liabilities' => :'Hash<String, Array<String>>',
        :'environment' => :'WebhookEnvironmentValues'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'error',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Plaid::LiabilitiesDefaultUpdateWebhook` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Plaid::LiabilitiesDefaultUpdateWebhook`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'webhook_type')
        self.webhook_type = attributes[:'webhook_type']
      end

      if attributes.key?(:'webhook_code')
        self.webhook_code = attributes[:'webhook_code']
      end

      if attributes.key?(:'item_id')
        self.item_id = attributes[:'item_id']
      end

      if attributes.key?(:'error')
        self.error = attributes[:'error']
      end

      if attributes.key?(:'account_ids_with_new_liabilities')
        if (value = attributes[:'account_ids_with_new_liabilities']).is_a?(Array)
          self.account_ids_with_new_liabilities = value
        end
      end

      if attributes.key?(:'account_ids_with_updated_liabilities')
        if (value = attributes[:'account_ids_with_updated_liabilities']).is_a?(Hash)
          self.account_ids_with_updated_liabilities = value
        end
      end

      if attributes.key?(:'environment')
        self.environment = attributes[:'environment']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @webhook_type.nil?
        invalid_properties.push('invalid value for "webhook_type", webhook_type cannot be nil.')
      end

      if @webhook_code.nil?
        invalid_properties.push('invalid value for "webhook_code", webhook_code cannot be nil.')
      end

      if @item_id.nil?
        invalid_properties.push('invalid value for "item_id", item_id cannot be nil.')
      end

      if @account_ids_with_new_liabilities.nil?
        invalid_properties.push('invalid value for "account_ids_with_new_liabilities", account_ids_with_new_liabilities cannot be nil.')
      end

      if @account_ids_with_updated_liabilities.nil?
        invalid_properties.push('invalid value for "account_ids_with_updated_liabilities", account_ids_with_updated_liabilities cannot be nil.')
      end

      if @environment.nil?
        invalid_properties.push('invalid value for "environment", environment cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @webhook_type.nil?
      return false if @webhook_code.nil?
      return false if @item_id.nil?
      return false if @account_ids_with_new_liabilities.nil?
      return false if @account_ids_with_updated_liabilities.nil?
      return false if @environment.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          webhook_type == o.webhook_type &&
          webhook_code == o.webhook_code &&
          item_id == o.item_id &&
          error == o.error &&
          account_ids_with_new_liabilities == o.account_ids_with_new_liabilities &&
          account_ids_with_updated_liabilities == o.account_ids_with_updated_liabilities &&
          environment == o.environment
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [webhook_type, webhook_code, item_id, error, account_ids_with_new_liabilities, account_ids_with_updated_liabilities, environment].hash
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
