# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chuizi/version'

Gem::Specification.new do |spec|
  spec.name          = "chuizi"
  spec.version       = Chuizi::VERSION
  spec.authors       = ["yunlei"]
  spec.email         = ["steven.lyl147@gmail.com"]
  spec.summary       = %q{Yet Another Rack-based Tiny Web Framework}
  spec.description   = %q{Yet Another Rack-based Tiny Web Framework}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rack", "~> 1.6.0"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
