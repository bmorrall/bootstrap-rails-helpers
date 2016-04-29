require 'spec_helper'

describe BootstrapRailsHelpers::V2::FlashHelper do

  context 'with dummy class' do
    class DummyClass; end
    before(:all) do
      DummyClass.send :include, BootstrapRailsHelpers::V2::FlashHelper
      @dummy = DummyClass.new
    end
    it { @dummy.should respond_to(:alert_message) }
    it { @dummy.should respond_to(:bootstrap_flash) }
  end

end
