# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'country_select/version'

Gem::Specification.new do |s|
  s.name        = 'country_select'
  s.version     = CountrySelect::VERSION
  s.licenses    = ['MIT']
  s.authors     = ['Stefan Penner']
  s.email       = ['stefan.penner@gmail.com']
  s.homepage    = 'https://github.com/stefanpenner/country_select'
  s.summary     = %q{Country Select Plugin}
  s.description = %q{Provides a simple helper to get an HTML select list of countries.  The list of countries comes from the ISO 3166 standard.  While it is a relatively neutral source of country names, it will still offend some users.}

  s.rubyforge_project = 'country_select'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  # specify any dependencies here; for example:
  s.add_development_dependency 'rspec', '~> 2'
  s.add_development_dependency 'actionpack', '~> 3'
  # Putting this directly in Gemfile until thoughtbot pushes latest version
  # that supports Bundler `platform` directive for rbx support in travis-ci
  #s.add_development_dependency 'appraisal'
  s.add_development_dependency 'pry', '~> 0'
  s.add_dependency 'countries', '~> 0.9.3'
end
