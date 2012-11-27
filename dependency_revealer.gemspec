# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "dependency_revealer"
  gem.version       = "1.0.0"
  gem.authors       = ["Franck Verrot"]
  gem.email         = ["franck@verrot.fr"]
  gem.description   = %q{Reveals all the dependencies given a Gemfile}
  gem.summary       = %q{Reveals all the dependencies given a Gemfile}
  gem.homepage      = "http://github.com/franckverrot/dependency_revealer"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test)/})

  gem.add_dependency 'bundler'
end
