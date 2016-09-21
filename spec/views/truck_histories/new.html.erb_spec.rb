require 'rails_helper'

RSpec.describe "truck_histories/new", type: :view do
  before(:each) do
    skip
    assign(:truck_history, TruckHistory.new(
      :maintenance_info => "MyString",
      :maintenance_file => "MyString",
      :maintenance_file_size => "MyString",
      :maintenance_passing => false,
      :truck => nil
    ))
  end

  it "renders new truck_history form" do
    render

    assert_select "form[action=?][method=?]", truck_histories_path, "post" do

      assert_select "input#truck_history_maintenance_info[name=?]", "truck_history[maintenance_info]"

      assert_select "input#truck_history_maintenance_file[name=?]", "truck_history[maintenance_file]"

      assert_select "input#truck_history_maintenance_file_size[name=?]", "truck_history[maintenance_file_size]"

      assert_select "input#truck_history_maintenance_passing[name=?]", "truck_history[maintenance_passing]"

      assert_select "input#truck_history_truck_id[name=?]", "truck_history[truck_id]"
    end
  end
end
