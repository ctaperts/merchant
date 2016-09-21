require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
  skip
    assign(:products, [
      Product.create!(
        :name => "Name",
        :price => "9.99",
        :quantity => 2,
        :description => "MyText",
        :category => nil,
        :brand => nil
      ),
      Product.create!(
        :name => "Name",
        :price => "9.99",
        :quantity => 2,
        :description => "MyText",
        :category => nil,
        :brand => nil
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
