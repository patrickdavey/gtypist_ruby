# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gtypist_ruby/version'

Gem::Specification.new do |spec|
  spec.name          = "gtypist_ruby"
  spec.version       = GtypistRuby::VERSION
  spec.authors       = ["Patrick Davey"]
  spec.email         = ["patrick.davey@gmail.com"]

  spec.summary       = %q{Gem to allow using rubygem source files in gtypist.}
  spec.description   = %q{This gem allows users to easily pull in source files from a rubygem for use in the gtypist touch typing tutor.}
  spec.homepage      = "https://github.com/patrickdavey/gtypist_ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry", ">= 0.9.12"
  spec.add_development_dependency "guard-rspec", "~> 4.3"
end
