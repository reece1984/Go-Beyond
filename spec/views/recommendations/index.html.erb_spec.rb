require 'spec_helper'

describe "recommendations/index" do
  before(:each) do
    assign(:recommendations, [
      stub_model(Recommendation,
        :description => "MyText",
        :recommender_id => 1,
        :receiver_id => 2
      ),
      stub_model(Recommendation,
        :description => "MyText",
        :recommender_id => 1,
        :receiver_id => 2
      )
    ])
  end

  it "renders a list of recommendations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
