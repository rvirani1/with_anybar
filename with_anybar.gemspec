# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'with_anybar/version'

Gem::Specification.new do |spec|
  spec.name          = "with_anybar"
  spec.version       = WithAnybar::VERSION
  spec.authors       = ["Riaz Virani"]
  spec.email         = ["riaz.n.virani@gmail.com"]

  spec.summary       = %q{Track status of a bash command in anybar}
  spec.homepage      = "https://github.com/rvirani1/with_anybar"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.bindir        = "bin"
  spec.executables   = ["with_anybar"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
