require 'rails_helper'

RSpec.describe "loadings/show", type: :view do
  before(:each) do
    @loading = assign(:loading, Loading.create!(
      :check => false,
      :quality_check => false,
      :check_by => "Check By",
      :quality_check_by => "Quality Check By",
      :line_items => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Check By/)
    expect(rendered).to match(/Quality Check By/)
    expect(rendered).to match(//)
  end
end
