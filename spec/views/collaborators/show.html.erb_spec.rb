require 'spec_helper'

describe "collaborators/show" do
  before(:each) do
    @collaborator = assign(:collaborator, stub_model(Collaborator,
      :name => "Name",
      :email => "Email",
      :role => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(//)
  end
end
