# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "bootstrap_rails_helpers/version"

Gem::Specification.new do |s|
  s.name        = "bootstrap_rails_helpers"
  s.version     = BootstrapRailsHelpers::VERSION
  s.authors     = ["bmorrall"]
  s.email       = ["bemo56@hotmail.com"]
  s.homepage    = ""
  s.summary     = %q{Twitter Bootstrap Helpers for Rails}
  s.description = %q{Adds Helpers for Rails that take advantage of Twitter Boostrap, based off code from https://github.com/seyhunak/twitter-bootstrap-rails}

  s.rubyforge_project = "bootstrap_rails_helpers"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'

end
