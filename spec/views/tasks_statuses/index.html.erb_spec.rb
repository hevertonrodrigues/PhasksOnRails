require 'spec_helper'

describe "tasks_statuses/index" do
  before(:each) do
    assign(:tasks_statuses, [
      stub_model(TasksStatus,
        :name => "Name"
      ),
      stub_model(TasksStatus,
        :name => "Name"
      )
    ])
  end

  it "renders a list of tasks_statuses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
