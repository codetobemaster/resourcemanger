require 'spec_helper'

describe "schedules/new" do
  before(:each) do
    assign(:schedule, stub_model(Schedule,
      :user_attend_projects => nil,
      :year => 1,
      :month => 1,
      :week => 1,
      :numberdays => 1,
      :taskcontent => "MyText",
      :comment => "MyText",
      :status => 1
    ).as_new_record)
  end

  it "renders new schedule form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => schedules_path, :method => "post" do
      assert_select "input#schedule_user_attend_projects", :name => "schedule[user_attend_projects]"
      assert_select "input#schedule_year", :name => "schedule[year]"
      assert_select "input#schedule_month", :name => "schedule[month]"
      assert_select "input#schedule_week", :name => "schedule[week]"
      assert_select "input#schedule_numberdays", :name => "schedule[numberdays]"
      assert_select "textarea#schedule_taskcontent", :name => "schedule[taskcontent]"
      assert_select "textarea#schedule_comment", :name => "schedule[comment]"
      assert_select "input#schedule_status", :name => "schedule[status]"
    end
  end
end
