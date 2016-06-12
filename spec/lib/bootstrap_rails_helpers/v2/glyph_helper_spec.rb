require 'spec_helper'

describe BootstrapRailsHelpers::V2::GlyphHelper do

  context 'with dummy class' do
    class DummyClass; end
    before(:all) do
      DummyClass.send :include, BootstrapRailsHelpers::V2::GlyphHelper
      @dummy = DummyClass.new
    end
    it { @dummy.should respond_to(:glyph) }
  end

end
