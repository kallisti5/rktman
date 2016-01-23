# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rktman/version'

Gem::Specification.new do |spec|
  spec.name          = 'rktman'
  spec.version       = RktMan::VERSION
  spec.summary       = "RKT Management and Control"
  spec.description   = "Manage your RKT container infrastructure"

  spec.authors       = ["Alexander von Gluck IV"]
  spec.email         = ["kallisti5@unixzen.com"]
  spec.files         = ["lib/rktman.rb", "lib/api.rb", "lib/api_services.rb"]
  spec.homepage      = 'http://rubygems.org/gems/rktman'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
