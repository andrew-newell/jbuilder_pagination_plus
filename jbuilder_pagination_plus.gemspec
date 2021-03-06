# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jbuilder/pagination/version'

Gem::Specification.new do |spec|
  spec.name = "jbuilder_pagination_plus"
  spec.version = Pagination::VERSION
  spec.authors = ["Bruno Bacarini", "Andrew Newell"]
  spec.email = ["bacarini.bruno@gmail.com", "scytherswings@gmail.com"]

  spec.summary = "Jbuilder extension to allows pagination according to JSON API format"
  spec.description = "Jbuilder extension to allows pagination according to JSON API format. See http://jsonapi.org for details on the format. Also provides methods for simpler pagination in controllers"
  spec.homepage = "https://github.com/IlluminusLimited/jbuilder_pagination_plus"
  spec.license = "MIT"

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'rack', '~> 2.0', '>= 2.0.0'
  spec.add_runtime_dependency 'jbuilder', '~> 2.8', '>= 2.8.0'
  spec.add_development_dependency 'rspec', '~> 3.8', '>= 3.8.0'
  spec.add_development_dependency 'rake', '~> 12.0', '>= 12.0.0'
  spec.add_development_dependency 'pry', '~> 0'
end
