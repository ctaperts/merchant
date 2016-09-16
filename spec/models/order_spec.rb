require 'rails_helper'

describe Order do
  it "is invalid without a name" do
    expect( FactoryGirl.build(:order, name: nil ) ).to_not be_valid
    expect( FactoryGirl.build(:order, address: nil ) ).to_not be_valid
    expect( FactoryGirl.build(:order, pay_type: nil ) ).to_not be_valid
    expect( FactoryGirl.build(:order, user_id: nil ) ).to_not be_valid
  end
  it "is valid with a name" do
    expect( FactoryGirl.build(:order) ).to be_valid
  end
end
