require 'rails_helper'

RSpec.describe "locations/show", type: :view do
  before(:each) do
  skip
    @location = assign(:location, Location.create!(
      :location => 2,
      :location_info => "Location Info",
      :product => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Location Info/)
    expect(rendered).to match(//)
  end
end
