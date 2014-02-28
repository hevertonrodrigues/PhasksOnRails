require 'spec_helper'

describe "tasks_lists/edit" do
  before(:each) do
    @tasks_list = assign(:tasks_list, stub_model(TasksList,
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit tasks_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tasks_list_path(@tasks_list), "post" do
      assert_select "input#tasks_list_name[name=?]", "tasks_list[name]"
      assert_select "textarea#tasks_list_description[name=?]", "tasks_list[description]"
    end
  end
end
