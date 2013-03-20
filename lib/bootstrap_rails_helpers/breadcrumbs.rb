module BootstrapRailsHelpers::Breadcrumbs
  include BootstrapRailsHelpers::BreadcrumbsHelper

  def self.included(base)
    base.extend(ClassMethods)
  end

  def self.method_added(method_name)
    puts "Adding #{method_name.inspect}"
  end

  module ClassMethods
    def add_breadcrumb(name, url, options = {})
      class_name = self.name.underscore
      before_filter options do |controller|
        name = controller.send :translate_breadcrumb, name, class_name if name.is_a?(Symbol)
        controller.send :add_breadcrumb, name, url
      end
    end
  end

end