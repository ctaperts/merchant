require 'rails_helper'

describe Location do
  it "is invalid without a name" do
    expect( FactoryGirl.build(:location, name: nil ) ).to_not be_valid
  end
  it "is valid with a name" do
    expect( FactoryGirl.build(:location) ).to be_valid
  end
  it "is valid with a product_id" do
    expect( FactoryGirl.build(:location, product_id: 1 ) ).to be_valid
  end
end
