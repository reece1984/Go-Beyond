require 'spec_helper'

describe "challenges/index" do
  before(:each) do
    assign(:challenges, [
      stub_model(Challenge,
        :title => "Title",
        :description => "MyText",
        :duration => 1,
        :status => "Status",
        :user_id => 2,
        :creator_id => 3,
        :contributor_id => 4
      ),
      stub_model(Challenge,
        :title => "Title",
        :description => "MyText",
        :duration => 1,
        :status => "Status",
        :user_id => 2,
        :creator_id => 3,
        :contributor_id => 4
      )
    ])
  end

  it "renders a list of challenges" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
