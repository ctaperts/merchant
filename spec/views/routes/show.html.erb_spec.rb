require 'rails_helper'

RSpec.describe "routes/show", type: :view do
  before(:each) do
    @route = assign(:route, Route.create!(
      :truck => 2,
      :description => "Description",
      :order => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(//)
  end
end
