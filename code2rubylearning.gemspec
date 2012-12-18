# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'code2rubylearning/version'

Gem::Specification.new do |gem|
  gem.name = "code2rubylearning"
  gem.version = Code2rubylearning::VERSION
  gem.authors = ["Rudi Luzar"]
  gem.email = ["rudi@rudi.me"]
  gem.description = "command line tool that formats, given source code files, making them ready for pasting to the rubylearning.org forum." 
  gem.summary = "command line tool that formats, given source code files, making them ready for pasting to the rubylearning.org forum."
  gem.homepage = "https://github.com/rudicode/code2rubylearning"

  gem.files = `git ls-files`.split($/)
  gem.executables = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
