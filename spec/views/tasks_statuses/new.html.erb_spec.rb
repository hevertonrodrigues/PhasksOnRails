require 'spec_helper'

describe "tasks_statuses/new" do
  before(:each) do
    assign(:tasks_status, stub_model(TasksStatus,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new tasks_status form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tasks_statuses_path, "post" do
      assert_select "input#tasks_status_name[name=?]", "tasks_status[name]"
    end
  end
end
