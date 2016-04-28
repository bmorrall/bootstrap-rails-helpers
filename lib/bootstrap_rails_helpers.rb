require "bootstrap_rails_helpers/version"

module BootstrapRailsHelpers
  mattr_accessor :bootstrap_version
  @@bootstrap_version = 3

  def self.setup
    yield self
  end
end

require 'bootstrap_rails_helpers/railtie' if defined?(Rails)
