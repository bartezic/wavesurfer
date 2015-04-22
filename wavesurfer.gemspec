# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wavesurfer/version'

Gem::Specification.new do |spec|
  spec.name          = 'wavesurfer'
  spec.version       = Wavesurfer::VERSION
  spec.authors       = ['Viktor Oleksyn']
  spec.email         = ['bartezic@gmail.com']
  spec.description   = %q{wavesurfer.js for the Rails asset pipeline}
  spec.summary       = %q{wavesurfer.js for the Rails asset pipeline.}
  spec.homepage      = 'https://github.com/bartezic/wavesurfer'
  spec.license       = 'MIT'

  spec.files         = Dir["{lib,vendor}/**/*"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", '~> 0'
end
