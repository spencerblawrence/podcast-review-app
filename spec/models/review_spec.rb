require 'spec_helper'

describe Review, type: :model do
  it { should belong_to :podcast }

  it { should have_valid(:rating).when(1) }
  it { should have_valid(:rating).when(5) }
  it { should_not have_valid(:rating).when(nil, "") }
  it { should_not have_valid(:rating).when(0) }
  it { should_not have_valid(:rating).when(6) }
  it { should validate_length_of(:body).is_at_least(5).is_at_most(500) }
end
