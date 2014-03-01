require "spec_helper"

describe TasksStatusesController do
  describe "routing" do

    it "routes to #index" do
      get("/tasks_statuses").should route_to("tasks_statuses#index")
    end

    it "routes to #new" do
      get("/tasks_statuses/new").should route_to("tasks_statuses#new")
    end

    it "routes to #show" do
      get("/tasks_statuses/1").should route_to("tasks_statuses#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tasks_statuses/1/edit").should route_to("tasks_statuses#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tasks_statuses").should route_to("tasks_statuses#create")
    end

    it "routes to #update" do
      put("/tasks_statuses/1").should route_to("tasks_statuses#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tasks_statuses/1").should route_to("tasks_statuses#destroy", :id => "1")
    end

  end
end
