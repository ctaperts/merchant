require 'rails_helper'

RSpec.describe "locations/new", type: :view do
  before(:each) do
  skip
    assign(:location, Location.new(
      :location => 1,
      :location_info => "MyString",
      :product => nil
    ))
  end

  it "renders new location form" do
    render

    assert_select "form[action=?][method=?]", locations_path, "post" do

      assert_select "input#location_location[name=?]", "location[location]"

      assert_select "input#location_location_info[name=?]", "location[location_info]"

      assert_select "input#location_product_id[name=?]", "location[product_id]"
    end
  end
end
