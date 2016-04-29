require 'spec_helper'

describe BootstrapRailsHelpers::V2::BreadcrumbsHelper do

  context 'with dummy class' do
    class DummyClass; end
    before(:all) do
      DummyClass.send :include, BootstrapRailsHelpers::V2::BreadcrumbsHelper
      @dummy = DummyClass.new
    end
    it { @dummy.should respond_to(:add_breadcrumb) }
    it { @dummy.should respond_to(:translate_breadcrumb) }
    it { @dummy.should respond_to(:render_breadcrumbs) }
  end

end
