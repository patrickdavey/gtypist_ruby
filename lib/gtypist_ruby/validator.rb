require 'gtypist_ruby/exceptions'

module GtypistRuby
  class Validator
    def initialize(gemname)
      @gemname = gemname
    end

    def exists?
      @specification = Gem::Specification.find_by_name(gemname)
      true

      rescue Gem::LoadError
        raise MissingGemError.new "#{gemname} is not installed locally, please run\n\n gem install #{gemname}"
    end

    private

    attr_reader :gemname
  end
end
