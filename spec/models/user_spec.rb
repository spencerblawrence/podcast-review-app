require 'rails_helper'

# RSpec.describe User, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end
feature 'determine if user is an admin or not an admin', %Q{
  An admin is a different role than a member} do


    pending  "#admin?" do
      it "is not an admin if the role is not admin" do
        user = FactoryBot.create(:user, role: "member")
        expect(user.admin?).to eq(false)
      end

      it "is an admin if the role is admin" do
        user = FactoryBot.create(:user, role: "admin")
        expect(user.admin?).to eq(true)
      end
    end
  end
