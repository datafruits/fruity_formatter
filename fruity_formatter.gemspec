# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fruity_formatter"
  spec.version       = '0.0.1'
  spec.authors       = ["Tony Miller"]
  spec.email         = ["mcfiredrill@gmail.com"]
  spec.description   = %q{A fruit oriented rspec test formatter.}
  spec.summary       = %q{A fruit oriented rspec test formatter.}
  spec.homepage      = "http://github.com/datafruits/fruiy_formatter"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rspec"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
