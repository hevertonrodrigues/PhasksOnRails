require 'spec_helper'

describe "tasks_lists/new" do
  before(:each) do
    assign(:tasks_list, stub_model(TasksList,
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new tasks_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tasks_lists_path, "post" do
      assert_select "input#tasks_list_name[name=?]", "tasks_list[name]"
      assert_select "textarea#tasks_list_description[name=?]", "tasks_list[description]"
    end
  end
end
