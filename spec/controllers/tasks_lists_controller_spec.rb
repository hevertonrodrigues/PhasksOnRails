require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe TasksListsController do

  # This should return the minimal set of attributes required to create a valid
  # TasksList. As you add validations to TasksList, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # TasksListsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all tasks_lists as @tasks_lists" do
      tasks_list = TasksList.create! valid_attributes
      get :index, {}, valid_session
      assigns(:tasks_lists).should eq([tasks_list])
    end
  end

  describe "GET show" do
    it "assigns the requested tasks_list as @tasks_list" do
      tasks_list = TasksList.create! valid_attributes
      get :show, {:id => tasks_list.to_param}, valid_session
      assigns(:tasks_list).should eq(tasks_list)
    end
  end

  describe "GET new" do
    it "assigns a new tasks_list as @tasks_list" do
      get :new, {}, valid_session
      assigns(:tasks_list).should be_a_new(TasksList)
    end
  end

  describe "GET edit" do
    it "assigns the requested tasks_list as @tasks_list" do
      tasks_list = TasksList.create! valid_attributes
      get :edit, {:id => tasks_list.to_param}, valid_session
      assigns(:tasks_list).should eq(tasks_list)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new TasksList" do
        expect {
          post :create, {:tasks_list => valid_attributes}, valid_session
        }.to change(TasksList, :count).by(1)
      end

      it "assigns a newly created tasks_list as @tasks_list" do
        post :create, {:tasks_list => valid_attributes}, valid_session
        assigns(:tasks_list).should be_a(TasksList)
        assigns(:tasks_list).should be_persisted
      end

      it "redirects to the created tasks_list" do
        post :create, {:tasks_list => valid_attributes}, valid_session
        response.should redirect_to(TasksList.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved tasks_list as @tasks_list" do
        # Trigger the behavior that occurs when invalid params are submitted
        TasksList.any_instance.stub(:save).and_return(false)
        post :create, {:tasks_list => { "name" => "invalid value" }}, valid_session
        assigns(:tasks_list).should be_a_new(TasksList)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        TasksList.any_instance.stub(:save).and_return(false)
        post :create, {:tasks_list => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested tasks_list" do
        tasks_list = TasksList.create! valid_attributes
        # Assuming there are no other tasks_lists in the database, this
        # specifies that the TasksList created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        TasksList.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => tasks_list.to_param, :tasks_list => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested tasks_list as @tasks_list" do
        tasks_list = TasksList.create! valid_attributes
        put :update, {:id => tasks_list.to_param, :tasks_list => valid_attributes}, valid_session
        assigns(:tasks_list).should eq(tasks_list)
      end

      it "redirects to the tasks_list" do
        tasks_list = TasksList.create! valid_attributes
        put :update, {:id => tasks_list.to_param, :tasks_list => valid_attributes}, valid_session
        response.should redirect_to(tasks_list)
      end
    end

    describe "with invalid params" do
      it "assigns the tasks_list as @tasks_list" do
        tasks_list = TasksList.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        TasksList.any_instance.stub(:save).and_return(false)
        put :update, {:id => tasks_list.to_param, :tasks_list => { "name" => "invalid value" }}, valid_session
        assigns(:tasks_list).should eq(tasks_list)
      end

      it "re-renders the 'edit' template" do
        tasks_list = TasksList.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        TasksList.any_instance.stub(:save).and_return(false)
        put :update, {:id => tasks_list.to_param, :tasks_list => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested tasks_list" do
      tasks_list = TasksList.create! valid_attributes
      expect {
        delete :destroy, {:id => tasks_list.to_param}, valid_session
      }.to change(TasksList, :count).by(-1)
    end

    it "redirects to the tasks_lists list" do
      tasks_list = TasksList.create! valid_attributes
      delete :destroy, {:id => tasks_list.to_param}, valid_session
      response.should redirect_to(tasks_lists_url)
    end
  end

end