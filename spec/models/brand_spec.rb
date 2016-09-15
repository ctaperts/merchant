require 'rails_helper'

describe Brand do
  it "is invalid without a name" do
    expect( FactoryGirl.build(:brand, name: nil ) ).to_not be_valid
  end
  it "is valid with a name" do
    expect( FactoryGirl.build(:brand) ).to be_valid
  end
end
