require 'rails_helper'

RSpec.describe "truck_histories/show", type: :view do
  before(:each) do
    skip
    @truck_history = assign(:truck_history, TruckHistory.create!(
      :maintenance_info => "Maintenance Info",
      :maintenance_file => "Maintenance File",
      :maintenance_file_size => "Maintenance File Size",
      :maintenance_passing => false,
      :truck => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Maintenance Info/)
    expect(rendered).to match(/Maintenance File/)
    expect(rendered).to match(/Maintenance File Size/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
  end
end
