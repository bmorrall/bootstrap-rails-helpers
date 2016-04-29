module BootstrapRailsHelpers
  module V2
    module ModalHelper

      def modal_dialog(options = {}, escape = true, &block)
        default_options = { :class => 'modal hide fade' }
        render :layout => 'bootstrap_rails_helpers/modal_dialog', :locals => {
          options: default_options.merge(options),
          escape: escape
        }, &block
      end

      def modal_header(content_or_options_with_block = nil, options = {}, escape = true, &block)
        default_options = { :class => 'modal-header' }
        if block_given?
          options = content_or_options_with_block if content_or_options_with_block.is_a?(Hash)
          render :layout => 'bootstrap_rails_helpers/modal_header', :locals => {
            options: default_options.merge(options),
            escape: escape
          }, &block
        else
          render :layout => 'bootstrap_rails_helpers/modal_header', :locals => {
            options: default_options.merge(options),
            escape: escape
          } do
            content_tag :h3, content_or_options_with_block
          end
        end
      end

      def modal_body(options = {}, escape = true, &block)
        default_options = { :class => 'modal-body' }
        render :layout => 'bootstrap_rails_helpers/modal_body', :locals => {
          options: default_options.merge(options),
          escape: escape
        }, &block
      end

      def modal_footer(options = {}, escape = true, &block)
        default_options = { :class => 'modal-footer' }
        render :layout => 'bootstrap_rails_helpers/modal_footer', :locals => {
          options: default_options.merge(options),
          escape: escape
        }, &block
      end

      def modal_toggle(content_or_options = {}, options = {}, &block)
        if block_given?
          options = content_or_options if content_or_options.is_a?(Hash)
          default_options = { :class => 'btn', "data-toggle" => "modal", "href" => options[:dialog] }.merge(options)
          content_tag :a, nil, default_options, true, &block
        else
          default_options = { :class => 'btn', "data-toggle" => "modal", "href" => options[:dialog] }.merge(options)
          content_tag :a, content_or_options, default_options, true
        end
      end

      def modal_cancel_button content, options = {}
        default_options = { :class => "btn bootstrap-modal-cancel-button", :data => { dismiss: "modal" }, :aria => { hidden: 'true' }}
        content_tag_string "a", content, default_options.merge(options)
      end

    end
  end
end
