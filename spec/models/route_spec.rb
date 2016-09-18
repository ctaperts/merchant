require 'rails_helper'

describe Route do
  it "is invalid without a order and truck" do
    expect( FactoryGirl.build(:route, order: nil ) ).to_not be_valid
    expect( FactoryGirl.build(:route, truck: nil ) ).to_not be_valid
  end
  it "is valid" do
    expect( FactoryGirl.build(:route) ).to be_valid
  end
end
