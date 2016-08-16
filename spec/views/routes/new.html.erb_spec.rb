require 'rails_helper'

RSpec.describe "routes/new", type: :view do
  before(:each) do
    assign(:route, Route.new(
      :truck => 1,
      :description => "MyString",
      :order => nil
    ))
  end

  it "renders new route form" do
    render

    assert_select "form[action=?][method=?]", routes_path, "post" do

      assert_select "input#route_truck[name=?]", "route[truck]"

      assert_select "input#route_description[name=?]", "route[description]"

      assert_select "input#route_order_id[name=?]", "route[order_id]"
    end
  end
end
