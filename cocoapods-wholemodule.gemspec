# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocoapods-wholemodule/gem_version.rb'

Gem::Specification.new do |spec|
    spec.name          = 'cocoapods-wholemodule'
    spec.version       = CocoaPodsWholeModule::VERSION
    spec.authors       = ['Jed Lewison']
    spec.email         = ['jed@magicappfactory.com']
    spec.summary       = %q{Adds CocoaPods post-install action to use Whole Module Optimization for Swift files in release mode.}
    spec.homepage      = 'https://github.com/jedlewison/cocoapods-wholemodule'
    spec.license       = 'MIT'
    spec.files         = `git ls-files`.split($/)
    spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
    spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
    spec.require_paths = ['lib']

    spec.add_development_dependency 'bundler', '~> 1.3'
    spec.add_development_dependency 'rake', '~> 0'
end
