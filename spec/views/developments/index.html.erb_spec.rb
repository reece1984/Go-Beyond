require 'spec_helper'

describe "developments/index" do
  before(:each) do
    assign(:developments, [
      stub_model(Development,
        :title => "",
        :description => "",
        :priority => "",
        :developer_id => "",
        :mentor_id => 1
      ),
      stub_model(Development,
        :title => "",
        :description => "",
        :priority => "",
        :developer_id => "",
        :mentor_id => 1
      )
    ])
  end

  it "renders a list of developments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
