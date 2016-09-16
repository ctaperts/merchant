require 'rails_helper'

describe Product do
  it "is valid" do
    expect( FactoryGirl.build(:product) ).to be_valid
  end
  it "is not valid" do
    expect( FactoryGirl.build(:product, name: nil ) ).to_not be_valid
    expect( FactoryGirl.build(:product, location_id: nil ) ).to_not be_valid
    expect( FactoryGirl.build(:product, brand_id: nil ) ).to_not be_valid
    expect( FactoryGirl.build(:product, category_id: nil ) ).to_not be_valid
    expect( FactoryGirl.build(:product, quantity: -1 ) ).to_not be_valid
    expect( FactoryGirl.build(:product, price: -1 ) ).to_not be_valid
  end
end
