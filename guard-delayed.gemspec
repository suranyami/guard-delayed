# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "guard/delayed/version"

Gem::Specification.new do |s|
  s.name        = "guard-delayed"
  s.version     = Guard::DelayedVersion::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["David Parry"]
  s.email       = ["david.parry@suranyami.com"]
  s.homepage    = 'http://rubygems.org/gems/guard-delayed'
  s.summary     = %q{guard gem for delayed_job}
  s.description = %q{Guard::Delayedjob automatically starts/stops/restarts delayed_job}
  s.license     = "MIT"

  s.required_rubygems_version = '>= 2.2'
  s.rubyforge_project = "guard-delayed"

  s.add_dependency "guard", ">= 2"
  s.add_dependency "guard-compat", ">= 1.1"
  s.add_dependency 'delayed_job', '>= 3'
  
  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'guard-bundler'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
