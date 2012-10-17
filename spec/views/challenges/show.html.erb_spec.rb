require 'spec_helper'

describe "challenges/show" do
  before(:each) do
    @challenge = assign(:challenge, stub_model(Challenge,
      :title => "Title",
      :description => "MyText",
      :duration => 1,
      :status => "Status",
      :user_id => 2,
      :creator_id => 3,
      :contributor_id => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/Status/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
  end
end
