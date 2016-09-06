require "postcodes_io/version"
require "postcodes_io/modules/lookup"
require "postcodes_io/modules/autocomplete"
require "postcodes_io/modules/validate"
require "postcodes_io/postcode"

require 'active_support'

require 'active_model/validator'
require 'active_model/validations'
require 'active_model/naming'
require 'active_model/errors'
require 'active_model/callbacks'
require 'active_support/callbacks'
require 'active_model/translation'

require 'active_model/validations/uk_postcode_validator'

module Postcodes
  class IO
    include Lookup
    include Autocomplete
    include Validate
  end
end
