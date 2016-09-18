require 'rails_helper'

describe Order do
  it "is invalid without a name address pay_type or User_id" do
    expect( FactoryGirl.build(:order, name: nil ) ).to_not be_valid
    expect( FactoryGirl.build(:order, address: nil ) ).to_not be_valid
    expect( FactoryGirl.build(:order, pay_type: nil ) ).to_not be_valid
    expect( FactoryGirl.build(:order, user_id: nil ) ).to_not be_valid
  end
  it "is valid" do
    expect( FactoryGirl.build(:order) ).to be_valid
  end
end
