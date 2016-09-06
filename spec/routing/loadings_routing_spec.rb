require "rails_helper"

RSpec.describe LoadingsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/loadings").to route_to("loadings#index")
    end

    it "routes to #new" do
      expect(:get => "/loadings/new").to route_to("loadings#new")
    end

    it "routes to #show" do
      expect(:get => "/loadings/1").to route_to("loadings#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/loadings/1/edit").to route_to("loadings#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/loadings").to route_to("loadings#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/loadings/1").to route_to("loadings#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/loadings/1").to route_to("loadings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/loadings/1").to route_to("loadings#destroy", :id => "1")
    end

  end
end
