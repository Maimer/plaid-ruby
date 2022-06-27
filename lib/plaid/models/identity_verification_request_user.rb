=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.131.3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'date'
require 'time'

module Plaid
  # User information collected outside of Link, most likely via your own onboarding process.  Each of the following identity fields are optional:  `email_address`  `phone_number`  `date_of_birth`  `name`  `address`  `id_number` Specifically, these fields are optional in that they can either be fully provided (satisfying every required field in their subschema) or omitted from the request entirely by not providing the key or value. Providing these fields via the API will result in Link skipping the data collection process for the associated user. All verification steps enabled in the associated Identity Verification Template will still be run. Verification steps will either be run immediately, or once the user completes the `accept_tos` step, depending on the value provided to the `gave_consent` field.
  class IdentityVerificationRequestUser
    # An identifier to help you connect this object to your internal systems. For example, your database ID corresponding to this object.
    attr_accessor :client_user_id

    attr_accessor :email_address

    # A phone number in E.164 format.
    attr_accessor :phone_number

    # A date in the format YYYY-MM-DD (RFC 3339 Section 5.6).
    attr_accessor :date_of_birth

    attr_accessor :name

    attr_accessor :address

    attr_accessor :id_number

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'client_user_id' => :'client_user_id',
        :'email_address' => :'email_address',
        :'phone_number' => :'phone_number',
        :'date_of_birth' => :'date_of_birth',
        :'name' => :'name',
        :'address' => :'address',
        :'id_number' => :'id_number'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'client_user_id' => :'String',
        :'email_address' => :'String',
        :'phone_number' => :'String',
        :'date_of_birth' => :'Date',
        :'name' => :'UserName',
        :'address' => :'UserAddress',
        :'id_number' => :'UserIDNumber'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'email_address',
        :'phone_number',
        :'date_of_birth',
        :'name',
        :'address',
        :'id_number'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Plaid::IdentityVerificationRequestUser` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Plaid::IdentityVerificationRequestUser`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'client_user_id')
        self.client_user_id = attributes[:'client_user_id']
      end

      if attributes.key?(:'email_address')
        self.email_address = attributes[:'email_address']
      end

      if attributes.key?(:'phone_number')
        self.phone_number = attributes[:'phone_number']
      end

      if attributes.key?(:'date_of_birth')
        self.date_of_birth = attributes[:'date_of_birth']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'id_number')
        self.id_number = attributes[:'id_number']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @client_user_id.nil?
        invalid_properties.push('invalid value for "client_user_id", client_user_id cannot be nil.')
      end

      if @client_user_id.to_s.length < 1
        invalid_properties.push('invalid value for "client_user_id", the character length must be great than or equal to 1.')
      end

      pattern = Regexp.new(/^\S+(\s+\S+)*$/)
      if @client_user_id !~ pattern
        invalid_properties.push("invalid value for \"client_user_id\", must conform to the pattern #{pattern}.")
      end


      pattern = Regexp.new(/^\+[1-9]\d{6,14}$/)
      if !@phone_number.nil? && @phone_number !~ pattern
        invalid_properties.push("invalid value for \"phone_number\", must conform to the pattern #{pattern}.")
      end


      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @client_user_id.nil?
      return false if @client_user_id.to_s.length < 1
      return false if @client_user_id !~ Regexp.new(/^\S+(\s+\S+)*$/)
      return false if !@phone_number.nil? && @phone_number !~ Regexp.new(/^\+[1-9]\d{6,14}$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] client_user_id Value to be assigned
    def client_user_id=(client_user_id)
      if client_user_id.nil?
        fail ArgumentError, 'client_user_id cannot be nil'
      end

      if client_user_id.to_s.length < 1
        fail ArgumentError, 'invalid value for "client_user_id", the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^\S+(\s+\S+)*$/)
      if client_user_id !~ pattern
        fail ArgumentError, "invalid value for \"client_user_id\", must conform to the pattern #{pattern}."
      end


      @client_user_id = client_user_id
    end

    # Custom attribute writer method with validation
    # @param [Object] phone_number Value to be assigned
    def phone_number=(phone_number)
      pattern = Regexp.new(/^\+[1-9]\d{6,14}$/)
      if !phone_number.nil? && phone_number !~ pattern
        fail ArgumentError, "invalid value for \"phone_number\", must conform to the pattern #{pattern}."
      end


      @phone_number = phone_number
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          client_user_id == o.client_user_id &&
          email_address == o.email_address &&
          phone_number == o.phone_number &&
          date_of_birth == o.date_of_birth &&
          name == o.name &&
          address == o.address &&
          id_number == o.id_number
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [client_user_id, email_address, phone_number, date_of_birth, name, address, id_number].hash
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
