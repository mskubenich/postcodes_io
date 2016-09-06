module ActiveModel
  module Validations
    class UkPostcodeValidator < ActiveModel::EachValidator
      def validate_each(record,attribute,value)
        pio = Postcodes::IO.new
        record.errors[attribute] << (options[:message] || "is invalid postcode") unless pio.validate(value)
      end
    end
  end
end