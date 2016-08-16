require 'rails_helper'

RSpec.describe "routes/index", type: :view do
  before(:each) do
    assign(:routes, [
      Route.create!(
        :truck => 2,
        :description => "Description",
        :order => nil
      ),
      Route.create!(
        :truck => 2,
        :description => "Description",
        :order => nil
      )
    ])
  end

  it "renders a list of routes" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
