require 'spec_helper'

describe "tasks_statuses/show" do
  before(:each) do
    @tasks_status = assign(:tasks_status, stub_model(TasksStatus,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
