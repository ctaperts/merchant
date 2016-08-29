require 'rails_helper'

RSpec.describe "trucks/new", type: :view do
  before(:each) do
    assign(:truck, Truck.new(
      :number => 1,
      :description => "MyString"
    ))
  end

  it "renders new truck form" do
    render

    assert_select "form[action=?][method=?]", trucks_path, "post" do

      assert_select "input#truck_number[name=?]", "truck[number]"

      assert_select "input#truck_description[name=?]", "truck[description]"
    end
  end
end
