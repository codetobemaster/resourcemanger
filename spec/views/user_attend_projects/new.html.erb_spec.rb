require 'spec_helper'

describe "user_attend_projects/new" do
  before(:each) do
    assign(:user_attend_project, stub_model(UserAttendProject,
      :user => nil,
      :project => nil,
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new user_attend_project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_attend_projects_path, :method => "post" do
      assert_select "input#user_attend_project_user", :name => "user_attend_project[user]"
      assert_select "input#user_attend_project_project", :name => "user_attend_project[project]"
      assert_select "input#user_attend_project_description", :name => "user_attend_project[description]"
    end
  end
end
