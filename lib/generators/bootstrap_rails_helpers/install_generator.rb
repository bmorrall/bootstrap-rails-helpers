require 'rails/generators'

module BootstrapRailsHelpers
  module Generators
    class InstallGenerator < Rails::Generators::Base

      def install
        create_file("config/initializers/bootstrap_rails_helpers.rb", <<-YAML)
BootstrapRailsHelpers.setup do | config |
  # Config bootstrap version (3 or 2)
  config.bootstrap_version = 3
end
        YAML
      end
    end
  end
end
