require 'spec_helper'
describe Genre do
  it { should have_valid(:name).when("Comedy") }
  it { should_not have_valid(:name).when(nil, "") }
end
