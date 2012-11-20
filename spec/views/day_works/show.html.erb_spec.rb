require 'spec_helper'

describe "day_works/show" do
  before(:each) do
    @day_work = assign(:day_work, stub_model(DayWork,
      :name => "Name",
      :hourwork => 1,
      :note => "Note"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/Note/)
  end
end
