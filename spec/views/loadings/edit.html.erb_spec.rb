require 'rails_helper'

RSpec.describe "loadings/edit", type: :view do
  before(:each) do
    @loading = assign(:loading, Loading.create!(
      :check => false,
      :quality_check => false,
      :check_by => "MyString",
      :quality_check_by => "MyString",
      :line_items => nil
    ))
  end

  it "renders the edit loading form" do
    render

    assert_select "form[action=?][method=?]", loading_path(@loading), "post" do

      assert_select "input#loading_check[name=?]", "loading[check]"

      assert_select "input#loading_quality_check[name=?]", "loading[quality_check]"

      assert_select "input#loading_check_by[name=?]", "loading[check_by]"

      assert_select "input#loading_quality_check_by[name=?]", "loading[quality_check_by]"

      assert_select "input#loading_line_items_id[name=?]", "loading[line_items_id]"
    end
  end
end
