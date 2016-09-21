require 'rails_helper'

RSpec.describe "Brands", type: :request do
  describe "GET /brands" do
    it "works! (now write some real specs)" do
      get admin_brands_path
      expect(response).to have_http_status(200)
    end
  end
end
