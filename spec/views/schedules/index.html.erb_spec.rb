require 'spec_helper'

describe "schedules/index" do
  before(:each) do
    assign(:schedules, [
      stub_model(Schedule,
        :user_attend_projects => nil,
        :year => 1,
        :month => 2,
        :week => 3,
        :numberdays => 4,
        :taskcontent => "MyText",
        :comment => "MyText",
        :status => 5
      ),
      stub_model(Schedule,
        :user_attend_projects => nil,
        :year => 1,
        :month => 2,
        :week => 3,
        :numberdays => 4,
        :taskcontent => "MyText",
        :comment => "MyText",
        :status => 5
      )
    ])
  end

  it "renders a list of schedules" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
