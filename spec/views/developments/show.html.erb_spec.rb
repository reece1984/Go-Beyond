require 'spec_helper'

describe "developments/show" do
  before(:each) do
    @development = assign(:development, stub_model(Development,
      :title => "",
      :description => "",
      :priority => "",
      :developer_id => "",
      :mentor_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/1/)
  end
end
