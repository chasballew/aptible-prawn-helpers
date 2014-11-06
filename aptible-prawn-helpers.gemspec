# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'English'
require 'aptible/document_helpers/version'

Gem::Specification.new do |spec|
  spec.name          = 'aptible-prawn-helpers'
  spec.version       = Aptible::DocumentHelpers::VERSION
  spec.authors       = ['Skylar Anderson']
  spec.email         = ['skylar@aptible.com']
  spec.description   = 'Prawn Document Helpers'
  spec.summary       = 'Prawn Document Helpers'
  spec.homepage      = 'https://github.com/aptible/aptible-prawn-helpers'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($RS)
  spec.test_files    = spec.files.grep(/^spec\//)
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'aptible-tasks', '>= 0.2.0'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 2.0'
  spec.add_development_dependency 'pry'
end
