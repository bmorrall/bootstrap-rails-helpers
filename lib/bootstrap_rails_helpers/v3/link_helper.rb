module BootstrapRailsHelpers
  module V3
    module LinkHelper

      def active_nav_item(name, href, controller, *actions)
        content_tag(:li, class: active_item(controller, *actions)) do
          content_tag(:a, name, href: href)
        end
      end

      protected
      def active_item(controller, *actions)
        return if controller_name != controller

        if actions.present?
          'active' if action_name.in?(actions)
        else
          'active'
        end
      end
    end
  end
end
