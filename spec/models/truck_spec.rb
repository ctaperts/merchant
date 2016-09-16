require 'rails_helper'

describe Truck do
  it "is invalid without a number and description" do
    expect( FactoryGirl.build(:truck, number: nil ) ).to_not be_valid
    expect( FactoryGirl.build(:truck, description: nil ) ).to_not be_valid
  end
  it "is valid" do
    expect( FactoryGirl.build(:truck) ).to be_valid
  end
end
