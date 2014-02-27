require 'spec_helper'

describe "collaborators/index" do
  before(:each) do
    assign(:collaborators, [
      stub_model(Collaborator,
        :name => "Name",
        :email => "Email",
        :role => nil
      ),
      stub_model(Collaborator,
        :name => "Name",
        :email => "Email",
        :role => nil
      )
    ])
  end

  it "renders a list of collaborators" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
