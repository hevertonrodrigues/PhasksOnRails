require 'spec_helper'

describe "tasks_statuses/edit" do
  before(:each) do
    @tasks_status = assign(:tasks_status, stub_model(TasksStatus,
      :name => "MyString"
    ))
  end

  it "renders the edit tasks_status form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tasks_status_path(@tasks_status), "post" do
      assert_select "input#tasks_status_name[name=?]", "tasks_status[name]"
    end
  end
end
