# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stall/colissimo/version'

Gem::Specification.new do |spec|
  spec.name          = "stall-colissimo"
  spec.version       = Stall::Colissimo::VERSION
  spec.authors       = ["vala"]
  spec.email         = ["vala@glyph.fr"]

  spec.summary       = %q{Stall e-commerce Colissimo shipping price calculator}
  spec.description   = %q{Stall e-commerce Colissimo shipping price calculator}
  spec.homepage      = "https://github.com/stall/stall-colissimo"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'stall', '~> 0.1'

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
