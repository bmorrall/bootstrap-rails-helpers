require 'spec_helper'

describe BootstrapRailsHelpers::Breadcrumbs do

  context 'with dummy class' do
    class DummyClass; end
    before(:all) do
      DummyClass.send :include, BootstrapRailsHelpers::Breadcrumbs
      @dummy = DummyClass.new
    end
    it { DummyClass.should respond_to(:add_breadcrumb) }
    it { @dummy.should respond_to(:add_breadcrumb) }
    it { @dummy.should respond_to(:translate_breadcrumb) }
    it { @dummy.should respond_to(:render_breadcrumbs) }
  end

end