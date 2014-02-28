require 'spec_helper'

describe "tasks_lists/show" do
  before(:each) do
    @tasks_list = assign(:tasks_list, stub_model(TasksList,
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end
