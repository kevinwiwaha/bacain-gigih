require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = User.create(email: "customertest@test.com", password: "sasasasa", password_confirmation: "sasasasa", name:"sals", role:"publisher", address:"solo")
  end
  describe "creation" do
    it "can be created" do
      expect(@user).to be_valid
    end

    it "cannot be created witout name, role, address" do
      @user.name = nil
      @user.role = nil
      @user.address = nil
      p @user
      expect(@user).to_not be_valid
    end
  end
end