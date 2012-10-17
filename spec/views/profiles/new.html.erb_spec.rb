require 'spec_helper'

describe "profiles/new" do
  before(:each) do
    assign(:profile, stub_model(Profile,
      :role => "MyString",
      :expertise => "MyText"
    ).as_new_record)
  end

  it "renders new profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => profiles_path, :method => "post" do
      assert_select "input#profile_role", :name => "profile[role]"
      assert_select "textarea#profile_expertise", :name => "profile[expertise]"
    end
  end
end
