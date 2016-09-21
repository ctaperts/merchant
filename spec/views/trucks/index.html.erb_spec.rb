require 'rails_helper'

RSpec.describe "trucks/index", type: :view do
  before(:each) do
    skip
    assign(:trucks, [
      Truck.create!(
        :number => 2,
        :description => "Description"
      ),
      Truck.create!(
        :number => 2,
        :description => "Description"
      )
    ])
  end

  it "renders a list of trucks" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
