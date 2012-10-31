require 'spec_helper'

describe "user_attend_projects/show" do
  before(:each) do
    @user_attend_project = assign(:user_attend_project, stub_model(UserAttendProject,
      :user => nil,
      :project => nil,
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Description/)
  end
end
