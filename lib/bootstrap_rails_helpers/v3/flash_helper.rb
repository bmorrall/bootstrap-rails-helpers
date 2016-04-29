module BootstrapRailsHelpers
  module V3
    module FlashHelper
      ALERT_TYPES = [:danger, :info, :success, :warning]

      def alert_message(message, options = {})
        render :partial => 'bootstrap_rails_helpers/flash_alert', :locals => {
          :alert_type => options[:alert_type],
          :message => message
        }
      end

      def bootstrap_flash
        flash_messages = []
        flash.each do |type, message|
          # Skip empty messages, e.g. for devise messages set to nothing in a locale file.
          next if message.blank?
          type = type.to_sym
          type = :success if type == :notice
          type = :danger   if type == :alert
          next unless ALERT_TYPES.include?(type)

          Array(message).each do |msg|
            text = alert_message(msg, :alert_type => type)
            flash_messages << text if message
          end
        end
        flash_messages.join("\n").html_safe
      end

    end
  end
end
