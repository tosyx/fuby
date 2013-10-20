# coding: utf-8

def path_to(name) File.expand_path "../#{ name }", __FILE__ end

version = File.read(path_to 'VERSION').strip

$:.push path_to 'lib'

Gem::Specification.new do |gem|
  gem.name          = "fuby"
  gem.version       = version
  gem.authors       = ["Alex Goldsmith"]
  gem.email         = ["alex.k.goldsmith@gmail.com"]
  gem.summary       = "Lightweight extensions to the Ruby standard library"
  gem.homepage      = "http://github.com/tosyx/fuby"

  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
end
