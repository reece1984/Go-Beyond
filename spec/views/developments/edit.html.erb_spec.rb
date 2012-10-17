require 'spec_helper'

describe "developments/edit" do
  before(:each) do
    @development = assign(:development, stub_model(Development,
      :title => "",
      :description => "",
      :priority => "",
      :developer_id => "",
      :mentor_id => 1
    ))
  end

  it "renders the edit development form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => developments_path(@development), :method => "post" do
      assert_select "input#development_title", :name => "development[title]"
      assert_select "input#development_description", :name => "development[description]"
      assert_select "input#development_priority", :name => "development[priority]"
      assert_select "input#development_developer_id", :name => "development[developer_id]"
      assert_select "input#development_mentor_id", :name => "development[mentor_id]"
    end
  end
end
