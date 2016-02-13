# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'babymetal/version'

Gem::Specification.new do |spec|
  spec.name          = "babymetal"
  spec.version       = Babymetal::VERSION
  spec.authors       = ["Hondallica"]
  spec.email         = ["hondallica@gmail.com"]

  spec.summary       = %q{All about Japanese metal idol unit "BABYMETAL"}
  spec.description   = %q{BABYMETAL is a Japanese metal idol unit.

babymetal provides an easy method to information of BABYMETAL.}
  spec.homepage      = "https://github.com/hondallica/babymetal"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
