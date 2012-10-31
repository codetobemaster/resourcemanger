require 'spec_helper'

describe "schedules/show" do
  before(:each) do
    @schedule = assign(:schedule, stub_model(Schedule,
      :user_attend_projects => nil,
      :year => 1,
      :month => 2,
      :week => 3,
      :numberdays => 4,
      :taskcontent => "MyText",
      :comment => "MyText",
      :status => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/5/)
  end
end
