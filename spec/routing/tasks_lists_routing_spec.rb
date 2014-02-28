require "spec_helper"

describe TasksListsController do
  describe "routing" do

    it "routes to #index" do
      get("/tasks_lists").should route_to("tasks_lists#index")
    end

    it "routes to #new" do
      get("/tasks_lists/new").should route_to("tasks_lists#new")
    end

    it "routes to #show" do
      get("/tasks_lists/1").should route_to("tasks_lists#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tasks_lists/1/edit").should route_to("tasks_lists#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tasks_lists").should route_to("tasks_lists#create")
    end

    it "routes to #update" do
      put("/tasks_lists/1").should route_to("tasks_lists#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tasks_lists/1").should route_to("tasks_lists#destroy", :id => "1")
    end

  end
end
