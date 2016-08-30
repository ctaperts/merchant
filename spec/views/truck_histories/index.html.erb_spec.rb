require 'rails_helper'

RSpec.describe "truck_histories/index", type: :view do
  before(:each) do
    assign(:truck_histories, [
      TruckHistory.create!(
        :maintenance_info => "Maintenance Info",
        :maintenance_file => "Maintenance File",
        :maintenance_file_size => "Maintenance File Size",
        :maintenance_passing => false,
        :truck => nil
      ),
      TruckHistory.create!(
        :maintenance_info => "Maintenance Info",
        :maintenance_file => "Maintenance File",
        :maintenance_file_size => "Maintenance File Size",
        :maintenance_passing => false,
        :truck => nil
      )
    ])
  end

  it "renders a list of truck_histories" do
    render
    assert_select "tr>td", :text => "Maintenance Info".to_s, :count => 2
    assert_select "tr>td", :text => "Maintenance File".to_s, :count => 2
    assert_select "tr>td", :text => "Maintenance File Size".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
