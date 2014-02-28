require 'spec_helper'

describe "tasks_lists/index" do
  before(:each) do
    assign(:tasks_lists, [
      stub_model(TasksList,
        :name => "Name",
        :description => "MyText"
      ),
      stub_model(TasksList,
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of tasks_lists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
