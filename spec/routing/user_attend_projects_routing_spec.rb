require "spec_helper"

describe UserAttendProjectsController do
  describe "routing" do

    it "routes to #index" do
      get("/user_attend_projects").should route_to("user_attend_projects#index")
    end

    it "routes to #new" do
      get("/user_attend_projects/new").should route_to("user_attend_projects#new")
    end

    it "routes to #show" do
      get("/user_attend_projects/1").should route_to("user_attend_projects#show", :id => "1")
    end

    it "routes to #edit" do
      get("/user_attend_projects/1/edit").should route_to("user_attend_projects#edit", :id => "1")
    end

    it "routes to #create" do
      post("/user_attend_projects").should route_to("user_attend_projects#create")
    end

    it "routes to #update" do
      put("/user_attend_projects/1").should route_to("user_attend_projects#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/user_attend_projects/1").should route_to("user_attend_projects#destroy", :id => "1")
    end

  end
end
