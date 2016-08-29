require 'rails_helper'

RSpec.describe "trucks/edit", type: :view do
  before(:each) do
    @truck = assign(:truck, Truck.create!(
      :number => 1,
      :description => "MyString"
    ))
  end

  it "renders the edit truck form" do
    render

    assert_select "form[action=?][method=?]", truck_path(@truck), "post" do

      assert_select "input#truck_number[name=?]", "truck[number]"

      assert_select "input#truck_description[name=?]", "truck[description]"
    end
  end
end
