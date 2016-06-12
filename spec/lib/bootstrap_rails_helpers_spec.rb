require 'spec_helper'

describe BootstrapRailsHelpers do
  it 'default bootstrap version' do
    expect(BootstrapRailsHelpers.bootstrap_version).to eq 3
  end

  it 'config bootstrap version' do
    BootstrapRailsHelpers.setup do | config |
      config.bootstrap_version = 2
    end

    expect(BootstrapRailsHelpers.bootstrap_version).to eq 2

    BootstrapRailsHelpers.setup do | config |
      config.bootstrap_version = 3
    end
  end
end
