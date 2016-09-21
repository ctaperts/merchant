require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
  skip
    @product = assign(:product, Product.create!(
      :name => "Name",
      :price => "9.99",
      :quantity => 2,
      :description => "MyText",
      :category => nil,
      :brand => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
