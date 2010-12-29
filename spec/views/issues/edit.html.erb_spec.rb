require 'spec_helper'

describe "issues/edit.html.erb" do
  before(:each) do
    @issue = assign(:issue, stub_model(Issue,
      :title => "MyString"
    ))
  end

  it "renders the edit issue form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => issue_path(@issue), :method => "post" do
      assert_select "input#issue_title", :name => "issue[title]"
    end
  end
end
