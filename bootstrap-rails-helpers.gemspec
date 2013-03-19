# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bootstrap_rails_helpers/version"

Gem::Specification.new do |s|
  s.name        = "bootstrap-rails-helpers"
  s.version     = BootstrapRailsHelpers::VERSION
  s.authors     = ["bmorrall"]
  s.email       = ["bemo56@hotmail.com"]
  s.homepage    = "https://github.com/bmorrall/bootstrap_rails_helpers"
  s.summary     = %q{Twitter Bootstrap Helpers for Rails}
  s.description = %q{Adds several ActionView helpers to improve Twitter Bootstrap integration with Rails}

  s.rubyforge_project = "bootstrap-rails-helpers"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'railties', '>= 3.0'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rails', '>= 3.0'

end
