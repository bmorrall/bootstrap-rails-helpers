require 'bootstrap_rails_helpers/v3/flash_helper'
require 'bootstrap_rails_helpers/v3/glyph_helper'

require 'bootstrap_rails_helpers/v2/breadcrumbs_helper'
require 'bootstrap_rails_helpers/v2/flash_helper'
require 'bootstrap_rails_helpers/v2/glyph_helper'
require 'bootstrap_rails_helpers/v2/modal_helper'

module BootstrapRailsHelpers
  class Railtie < Rails::Railtie
    config.after_initialize do
      if BootstrapRailsHelpers.bootstrap_version == 3
        ActiveSupport.on_load :action_view do
          include BootstrapRailsHelpers::V3::FlashHelper
          include BootstrapRailsHelpers::V3::GlyphHelper
        end
        ActiveSupport.on_load :action_controller do
          append_view_path File.dirname(__FILE__) + "/../../app/views/v3"
        end

      elsif BootstrapRailsHelpers.bootstrap_version == 2
        ActiveSupport.on_load :action_view do
          include BootstrapRailsHelpers::V2::BreadcrumbsHelper
          include BootstrapRailsHelpers::V2::FlashHelper
          include BootstrapRailsHelpers::V2::GlyphHelper
          include BootstrapRailsHelpers::V2::ModalHelper
        end
        ActiveSupport.on_load :action_controller do
          append_view_path File.dirname(__FILE__) + "/../../app/views/v2"
        end

      else
        # TODO: raise error
      end
    end

  end
end

require 'bootstrap_rails_helpers/breadcrumbs'
