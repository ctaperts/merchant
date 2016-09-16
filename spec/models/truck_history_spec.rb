require 'rails_helper'

describe TruckHistory do
  it "is invalid without a number and description" do
    expect( FactoryGirl.build(:truck_history, maintenance_date: nil ) ).to_not be_valid
    expect( FactoryGirl.build(:truck_history, maintenance_passing: nil ) ).to_not be_valid
    expect( FactoryGirl.build(:truck_history, maintenance_info: nil ) ).to_not be_valid
    expect( FactoryGirl.build(:truck_history, truck_id: nil ) ).to_not be_valid
  end
  it "is valid" do
    expect( FactoryGirl.build(:truck_history) ).to be_valid
  end
end
