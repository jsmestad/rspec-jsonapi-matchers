# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec/jsonapi/matchers/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec-jsonapi-matchers"
  spec.version       = RSpec::JsonApi::Matchers::VERSION
  spec.authors       = ["Sergey Potapov"]
  spec.email         = ["blake131313@gmail.com"]

  spec.summary       = "RSpec matchers to test JSON API responses"
  spec.description   = spec.summary

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", ">= 5"
  spec.add_dependency "json_schema"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.7"
end
