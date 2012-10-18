require 'spec_helper'

describe "recommendations/show" do
  before(:each) do
    @recommendation = assign(:recommendation, stub_model(Recommendation,
      :description => "MyText",
      :recommender_id => 1,
      :receiver_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
