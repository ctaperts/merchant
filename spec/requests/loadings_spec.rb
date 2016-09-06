require 'rails_helper'

RSpec.describe "Loadings", type: :request do
  describe "GET /loadings" do
    it "works! (now write some real specs)" do
      get loadings_path
      expect(response).to have_http_status(200)
    end
  end
end
