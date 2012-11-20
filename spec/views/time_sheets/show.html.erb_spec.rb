require 'spec_helper'

describe "time_sheets/show" do
  before(:each) do
    @time_sheet = assign(:time_sheet, stub_model(TimeSheet,
      :staff => nil,
      :year => 1,
      :month => 2,
      :day => 3,
      :day_work => nil,
      :actual => 4,
      :note => "Note",
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
    rendered.should match(//)
    rendered.should match(/4/)
    rendered.should match(/Note/)
    rendered.should match(/5/)
  end
end
