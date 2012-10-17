require "spec_helper"

describe DevelopmentsController do
  describe "routing" do

    it "routes to #index" do
      get("/developments").should route_to("developments#index")
    end

    it "routes to #new" do
      get("/developments/new").should route_to("developments#new")
    end

    it "routes to #show" do
      get("/developments/1").should route_to("developments#show", :id => "1")
    end

    it "routes to #edit" do
      get("/developments/1/edit").should route_to("developments#edit", :id => "1")
    end

    it "routes to #create" do
      post("/developments").should route_to("developments#create")
    end

    it "routes to #update" do
      put("/developments/1").should route_to("developments#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/developments/1").should route_to("developments#destroy", :id => "1")
    end

  end
end
