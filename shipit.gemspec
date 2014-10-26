# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require './lib/shipit'

Gem::Specification.new do |spec|
  spec.name          = "shipit"
  spec.version       = Shipit::VERSION
  spec.summary       = "Shipping API"
  spec.description   = "Shipping API inspired/based on the active_shipping gem from Shopify, and looking to remove the active merchant dependancy and looking forward to simplify it"
  spec.authors       = ["Agustin Cavilliotti"]
  spec.email         = ["cavi21@gmail.com"]
  spec.homepage      = "http://github.com/cavi21/shipit"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
