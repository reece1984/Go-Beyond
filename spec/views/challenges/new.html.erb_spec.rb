require 'spec_helper'

describe "challenges/new" do
  before(:each) do
    assign(:challenge, stub_model(Challenge,
      :title => "MyString",
      :description => "MyText",
      :duration => 1,
      :status => "MyString",
      :user_id => 1,
      :creator_id => 1,
      :contributor_id => 1
    ).as_new_record)
  end

  it "renders new challenge form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => challenges_path, :method => "post" do
      assert_select "input#challenge_title", :name => "challenge[title]"
      assert_select "textarea#challenge_description", :name => "challenge[description]"
      assert_select "input#challenge_duration", :name => "challenge[duration]"
      assert_select "input#challenge_status", :name => "challenge[status]"
      assert_select "input#challenge_user_id", :name => "challenge[user_id]"
      assert_select "input#challenge_creator_id", :name => "challenge[creator_id]"
      assert_select "input#challenge_contributor_id", :name => "challenge[contributor_id]"
    end
  end
end
