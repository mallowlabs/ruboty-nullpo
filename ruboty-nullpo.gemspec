# encoding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ruboty/nullpo/version"

Gem::Specification.new do |spec|
  spec.name          = "ruboty-nullpo"
  spec.version       = Ruboty::Nullpo::VERSION
  spec.authors       = ["mallowlabs"]
  spec.email         = ["mallowlabs@gmail.com"]
  spec.summary       = "An ruboty handler to ぬるぽ -> ｶﾞｯ"
  spec.homepage      = "https://github.com/mallowlabs/ruboty-nullpo"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "ruboty"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
end
