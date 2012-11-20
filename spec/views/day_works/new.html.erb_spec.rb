require 'spec_helper'

describe "day_works/new" do
  before(:each) do
    assign(:day_work, stub_model(DayWork,
      :name => "MyString",
      :hourwork => 1,
      :note => "MyString"
    ).as_new_record)
  end

  it "renders new day_work form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => day_works_path, :method => "post" do
      assert_select "input#day_work_name", :name => "day_work[name]"
      assert_select "input#day_work_hourwork", :name => "day_work[hourwork]"
      assert_select "input#day_work_note", :name => "day_work[note]"
    end
  end
end
