require 'rails_helper'

RSpec.describe "locations/edit", type: :view do
  before(:each) do
  skip
    @location = assign(:location, Location.create!(
      :location => 1,
      :location_info => "MyString",
      :product => nil
    ))
  end

  it "renders the edit location form" do
    render

    assert_select "form[action=?][method=?]", location_path(@location), "post" do

      assert_select "input#location_location[name=?]", "location[location]"

      assert_select "input#location_location_info[name=?]", "location[location_info]"

      assert_select "input#location_product_id[name=?]", "location[product_id]"
    end
  end
end
