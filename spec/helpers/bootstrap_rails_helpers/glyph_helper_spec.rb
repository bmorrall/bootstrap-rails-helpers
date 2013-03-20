require 'spec_helper'

describe BootstrapRailsHelpers::GlyphHelper do

  context 'with dummy class' do
    class DummyClass; end
    before(:all) do
      DummyClass.send :include, BootstrapRailsHelpers::GlyphHelper
      @dummy = DummyClass.new
    end
    it { @dummy.should respond_to(:glyph) }
  end

end