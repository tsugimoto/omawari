# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omawari/version'

Gem::Specification.new do |spec|
  spec.name          = "omawari"
  spec.version       = Omawari::VERSION
  spec.authors       = ["Yoshiyuki Hirano"]
  spec.email         = ["yhirano@me.com"]

  spec.summary       = %q{Omawari is a Rubocop configuration gem.}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/yhirano55/omawari"
  spec.license       = "MIT"

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
