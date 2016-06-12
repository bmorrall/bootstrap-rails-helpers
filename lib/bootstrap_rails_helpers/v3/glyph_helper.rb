module BootstrapRailsHelpers
  module V3
    module GlyphHelper
      # ==== Examples
      # glyph(:share_alt)
      # # => <i class="glyphicon glyphicon-share-alt"></i>

      def glyph(name)
        content_tag :i, nil, :class => ['glyphicon', "glyphicon-#{name}"]
      end
    end
  end
end
