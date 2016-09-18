require 'rails_helper'

RSpec.describe "routes/edit", type: :view do
  before(:each) do
    @route = assign(:route, Route.create!(
      :truck => 1,
      :description => "MyString",
      :order_id => 1
    ))
  end

  it "renders the edit route form" do
    render

    assert_select "form[action=?][method=?]", route_path(@route), "post" do

      assert_select "input#route_truck[name=?]", "route[truck]"

      assert_select "input#route_description[name=?]", "route[description]"

      assert_select "input#route_order_id[name=?]", "route[order_id]"
    end
  end
end
