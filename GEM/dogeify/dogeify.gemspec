# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dogeify/version'

Gem::Specification.new do |spec|
  spec.name          = "dogeify"
  spec.version       = Dogeify::VERSION
  spec.authors       = ["Matt Huggins"]
  spec.email         = ["matt.huggins@gmail.com"]
  spec.description   = %q{Convert everyday boring English into doge speak!}
  spec.summary       = %q{English to doge translations}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  

  spec.add_dependency 'engtagger'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
