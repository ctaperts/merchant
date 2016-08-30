require 'rails_helper'

RSpec.describe "TruckHistories", type: :request do
  describe "GET /truck_histories" do
    it "works! (now write some real specs)" do
      get truck_histories_path
      expect(response).to have_http_status(200)
    end
  end
end
