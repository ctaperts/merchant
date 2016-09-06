require 'rails_helper'

RSpec.describe "loadings/index", type: :view do
  before(:each) do
    assign(:loadings, [
      Loading.create!(
        :check => false,
        :quality_check => false,
        :check_by => "Check By",
        :quality_check_by => "Quality Check By",
        :line_items => nil
      ),
      Loading.create!(
        :check => false,
        :quality_check => false,
        :check_by => "Check By",
        :quality_check_by => "Quality Check By",
        :line_items => nil
      )
    ])
  end

  it "renders a list of loadings" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Check By".to_s, :count => 2
    assert_select "tr>td", :text => "Quality Check By".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
