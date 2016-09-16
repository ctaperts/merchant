require 'rails_helper'

describe LineItem do
  it "is valid" do
    expect( FactoryGirl.build(:line_item) ).to be_valid
  end
end
