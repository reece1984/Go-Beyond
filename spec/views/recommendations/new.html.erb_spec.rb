require 'spec_helper'

describe "recommendations/new" do
  before(:each) do
    assign(:recommendation, stub_model(Recommendation,
      :description => "MyText",
      :recommender_id => 1,
      :receiver_id => 1
    ).as_new_record)
  end

  it "renders new recommendation form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => recommendations_path, :method => "post" do
      assert_select "textarea#recommendation_description", :name => "recommendation[description]"
      assert_select "input#recommendation_recommender_id", :name => "recommendation[recommender_id]"
      assert_select "input#recommendation_receiver_id", :name => "recommendation[receiver_id]"
    end
  end
end
