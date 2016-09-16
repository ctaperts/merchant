require 'rails_helper'

describe User do
  it "is valid" do
    expect( FactoryGirl.build(:user) ).to be_valid
  end
end
