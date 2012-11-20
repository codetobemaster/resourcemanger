require 'spec_helper'

describe "day_works/index" do
  before(:each) do
    assign(:day_works, [
      stub_model(DayWork,
        :name => "Name",
        :hourwork => 1,
        :note => "Note"
      ),
      stub_model(DayWork,
        :name => "Name",
        :hourwork => 1,
        :note => "Note"
      )
    ])
  end

  it "renders a list of day_works" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Note".to_s, :count => 2
  end
end
