require 'spec_helper'

describe "collaborators/new" do
  before(:each) do
    assign(:collaborator, stub_model(Collaborator,
      :name => "MyString",
      :email => "MyString",
      :role => nil
    ).as_new_record)
  end

  it "renders new collaborator form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", collaborators_path, "post" do
      assert_select "input#collaborator_name[name=?]", "collaborator[name]"
      assert_select "input#collaborator_email[name=?]", "collaborator[email]"
      assert_select "input#collaborator_role[name=?]", "collaborator[role]"
    end
  end
end
