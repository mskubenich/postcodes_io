require 'spec_helper'


class TestRecord
  include ActiveModel::Validations
  attr_accessor :home_postcode

  def initialize(home_postcode)
    @home_postcode = home_postcode
  end
end

module ActiveModel
  module Validations
    describe UkPostcodeValidator do

      before do
        TestRecord.reset_callbacks(:validate)
      end

      it "complains when no options are provided" do
        TestRecord.validates :home_postcode,
                             uk_postcode: true

        model = TestRecord.new(nil)
        expect(model.valid?).to equal(false)
        expect(model.errors[:home_postcode]).to equal(["is not a date"])
      end
    end
  end
end