require "spec_helper"
require "gtypist_ruby/validator"

module GtypistRuby
  describe Validator do
    it "#exists? return true if a gem exists on the system" do
      expect(Validator.new("bundler").exists?).to be(true)
    end

    it "#exists? to raise a MissingGemError if the gem does not exist" do
      expect{ Validator.new("wibble").exists? }.to raise_error(MissingGemError)
    end
  end
end

