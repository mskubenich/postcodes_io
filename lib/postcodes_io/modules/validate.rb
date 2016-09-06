require 'excon'
require 'json'

module Postcodes
  module Validate

    def validate(postcode)
      postcode = remove_whitespace postcode
      response = Excon.get("https://api.postcodes.io/postcodes/#{postcode}/validate")

      unless response.status == 404
        parsed_response = JSON.parse(response.body)
        return parsed_response['result']
      end
      return false
    end

    private

    def remove_whitespace(string)
      string.gsub(/\s+/, '')
    end

  end
end
