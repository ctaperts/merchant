require 'rails_helper'

RSpec.describe "locations/index", type: :view do
  before(:each) do
  skip
    assign(:locations, [
      Location.create!(
        :location => 2,
        :location_info => "Location Info",
        :product => nil
      ),
      Location.create!(
        :location => 2,
        :location_info => "Location Info",
        :product => nil
      )
    ])
  end

  it "renders a list of locations" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Location Info".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
