require 'spec_helper'

describe "time_sheets/edit" do
  before(:each) do
    @time_sheet = assign(:time_sheet, stub_model(TimeSheet,
      :staff => nil,
      :year => 1,
      :month => 1,
      :day => 1,
      :day_work => nil,
      :actual => 1,
      :note => "MyString",
      :status => 1
    ))
  end

  it "renders the edit time_sheet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => time_sheets_path(@time_sheet), :method => "post" do
      assert_select "input#time_sheet_staff", :name => "time_sheet[staff]"
      assert_select "input#time_sheet_year", :name => "time_sheet[year]"
      assert_select "input#time_sheet_month", :name => "time_sheet[month]"
      assert_select "input#time_sheet_day", :name => "time_sheet[day]"
      assert_select "input#time_sheet_day_work", :name => "time_sheet[day_work]"
      assert_select "input#time_sheet_actual", :name => "time_sheet[actual]"
      assert_select "input#time_sheet_note", :name => "time_sheet[note]"
      assert_select "input#time_sheet_status", :name => "time_sheet[status]"
    end
  end
end
