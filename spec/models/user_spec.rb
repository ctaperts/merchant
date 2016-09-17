require 'rails_helper'

describe User do
  it "is valid" do
    expect( FactoryGirl.build(:user) ).to be_valid
  end
  it "is valid admin" do
    expect( FactoryGirl.build(:admin) ).to be_valid
  end
end
