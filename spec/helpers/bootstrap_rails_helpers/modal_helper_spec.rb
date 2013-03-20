require 'spec_helper'

describe BootstrapRailsHelpers::ModalHelper do

  context 'with dummy class' do
    class DummyClass; end
    before(:all) do
      DummyClass.send :include, BootstrapRailsHelpers::ModalHelper
      @dummy = DummyClass.new
    end
    it { @dummy.should respond_to(:modal_dialog) }
    it { @dummy.should respond_to(:modal_header) }
    it { @dummy.should respond_to(:modal_body) }
    it { @dummy.should respond_to(:modal_footer) }
    it { @dummy.should respond_to(:modal_toggle) }
    it { @dummy.should respond_to(:modal_cancel_button) }
  end

end