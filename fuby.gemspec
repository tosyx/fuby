# -*- encoding: utf-8 -*-

lib = File.expand_path '../lib', __FILE__
$LOAD_PATH.unshift lib unless $LOAD_PATH.include? lib
require 'fuby/version'

Gem::Specification.new do |gem|
  gem.name          = "fuby"
  gem.version       = Fuby::VERSION
  gem.authors       = ["Alex Goldsmith"]
  gem.email         = ["alex.k.goldsmith@gmail.com"]
  gem.summary       = "Lightweight extensions to the Ruby standard library"
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
