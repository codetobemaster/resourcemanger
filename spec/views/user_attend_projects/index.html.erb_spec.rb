require 'spec_helper'

describe "user_attend_projects/index" do
  before(:each) do
    assign(:user_attend_projects, [
      stub_model(UserAttendProject,
        :user => nil,
        :project => nil,
        :description => "Description"
      ),
      stub_model(UserAttendProject,
        :user => nil,
        :project => nil,
        :description => "Description"
      )
    ])
  end

  it "renders a list of user_attend_projects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
