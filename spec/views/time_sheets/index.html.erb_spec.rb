require 'spec_helper'

describe "time_sheets/index" do
  before(:each) do
    assign(:time_sheets, [
      stub_model(TimeSheet,
        :staff => nil,
        :year => 1,
        :month => 2,
        :day => 3,
        :day_work => nil,
        :actual => 4,
        :note => "Note",
        :status => 5
      ),
      stub_model(TimeSheet,
        :staff => nil,
        :year => 1,
        :month => 2,
        :day => 3,
        :day_work => nil,
        :actual => 4,
        :note => "Note",
        :status => 5
      )
    ])
  end

  it "renders a list of time_sheets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Note".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
