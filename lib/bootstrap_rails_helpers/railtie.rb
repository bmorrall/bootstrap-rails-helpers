require File.dirname(__FILE__) + '/../../app/helpers/bootstrap_rails_helpers/breadcrumbs_helper'
require File.dirname(__FILE__) + '/../../app/helpers/bootstrap_rails_helpers/flash_helper'

module BootstrapRailsHelpers
  class Railtie < Rails::Railtie
    initializer "bootstrap_rails_helpers.breadcrumbs_helper" do
      ActionView::Base.send :include, BootstrapRailsHelpers::BreadcrumbsHelper
      ActionView::Base.send :include, BootstrapRailsHelpers::FlashHelper
      ActionController::Base.append_view_path File.dirname(__FILE__) + "/../../app/views"
    end
  end
end