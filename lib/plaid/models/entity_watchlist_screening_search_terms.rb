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
  # Search terms associated with an entity used for searching against watchlists
  class EntityWatchlistScreeningSearchTerms
    # ID of the associated entity program.
    attr_accessor :entity_watchlist_program_id

    # The name of the organization being screened.
    attr_accessor :legal_name

    attr_accessor :document_number

    attr_accessor :email_address

    attr_accessor :country

    attr_accessor :phone_number

    attr_accessor :url

    # The current version of the search terms. Starts at `1` and increments with each edit to `search_terms`.
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'entity_watchlist_program_id' => :'entity_watchlist_program_id',
        :'legal_name' => :'legal_name',
        :'document_number' => :'document_number',
        :'email_address' => :'email_address',
        :'country' => :'country',
        :'phone_number' => :'phone_number',
        :'url' => :'url',
        :'version' => :'version'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'entity_watchlist_program_id' => :'String',
        :'legal_name' => :'String',
        :'document_number' => :'String',
        :'email_address' => :'String',
        :'country' => :'String',
        :'phone_number' => :'String',
        :'url' => :'String',
        :'version' => :'Float'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'document_number',
        :'email_address',
        :'country',
        :'phone_number',
        :'url',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Plaid::EntityWatchlistScreeningSearchTerms` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Plaid::EntityWatchlistScreeningSearchTerms`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'entity_watchlist_program_id')
        self.entity_watchlist_program_id = attributes[:'entity_watchlist_program_id']
      end

      if attributes.key?(:'legal_name')
        self.legal_name = attributes[:'legal_name']
      end

      if attributes.key?(:'document_number')
        self.document_number = attributes[:'document_number']
      end

      if attributes.key?(:'email_address')
        self.email_address = attributes[:'email_address']
      end

      if attributes.key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.key?(:'phone_number')
        self.phone_number = attributes[:'phone_number']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @entity_watchlist_program_id.nil?
        invalid_properties.push('invalid value for "entity_watchlist_program_id", entity_watchlist_program_id cannot be nil.')
      end

      if @legal_name.nil?
        invalid_properties.push('invalid value for "legal_name", legal_name cannot be nil.')
      end

      if @legal_name.to_s.length < 1
        invalid_properties.push('invalid value for "legal_name", the character length must be great than or equal to 1.')
      end

      pattern = Regexp.new(/^\S+(\s+\S+)*$/)
      if @legal_name !~ pattern
        invalid_properties.push("invalid value for \"legal_name\", must conform to the pattern #{pattern}.")
      end


      if @version.nil?
        invalid_properties.push('invalid value for "version", version cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @entity_watchlist_program_id.nil?
      return false if @legal_name.nil?
      return false if @legal_name.to_s.length < 1
      return false if @legal_name !~ Regexp.new(/^\S+(\s+\S+)*$/)
      return false if @version.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] legal_name Value to be assigned
    def legal_name=(legal_name)
      if legal_name.nil?
        fail ArgumentError, 'legal_name cannot be nil'
      end

      if legal_name.to_s.length < 1
        fail ArgumentError, 'invalid value for "legal_name", the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^\S+(\s+\S+)*$/)
      if legal_name !~ pattern
        fail ArgumentError, "invalid value for \"legal_name\", must conform to the pattern #{pattern}."
      end


      @legal_name = legal_name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          entity_watchlist_program_id == o.entity_watchlist_program_id &&
          legal_name == o.legal_name &&
          document_number == o.document_number &&
          email_address == o.email_address &&
          country == o.country &&
          phone_number == o.phone_number &&
          url == o.url &&
          version == o.version
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [entity_watchlist_program_id, legal_name, document_number, email_address, country, phone_number, url, version].hash
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
