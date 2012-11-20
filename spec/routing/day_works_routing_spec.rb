require "spec_helper"

describe DayWorksController do
  describe "routing" do

    it "routes to #index" do
      get("/day_works").should route_to("day_works#index")
    end

    it "routes to #new" do
      get("/day_works/new").should route_to("day_works#new")
    end

    it "routes to #show" do
      get("/day_works/1").should route_to("day_works#show", :id => "1")
    end

    it "routes to #edit" do
      get("/day_works/1/edit").should route_to("day_works#edit", :id => "1")
    end

    it "routes to #create" do
      post("/day_works").should route_to("day_works#create")
    end

    it "routes to #update" do
      put("/day_works/1").should route_to("day_works#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/day_works/1").should route_to("day_works#destroy", :id => "1")
    end

  end
end
