=begin
#The Plaid API

#The Plaid REST API. Please see https://plaid.com/docs/api for more details.

The version of the OpenAPI document: 2020-09-14_1.485.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.3.0

=end

require 'date'
require 'time'

module Plaid
  class TransferEventType
    PENDING = "pending".freeze
    CANCELLED = "cancelled".freeze
    FAILED = "failed".freeze
    POSTED = "posted".freeze
    SETTLED = "settled".freeze
    RETURNED = "returned".freeze
    SWEPT = "swept".freeze
    SWEPT_SETTLED = "swept_settled".freeze
    RETURN_SWEPT = "return_swept".freeze
    SWEEP_PENDING = "sweep.pending".freeze
    SWEEP_POSTED = "sweep.posted".freeze
    SWEEP_SETTLED = "sweep.settled".freeze
    SWEEP_RETURNED = "sweep.returned".freeze
    SWEEP_FAILED = "sweep.failed".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      # We do not validate that the value is one of the enums set in the OpenAPI
      # file because we want to be able to add to our list of enums without
      # breaking this client library.
      value
    end
  end

end
