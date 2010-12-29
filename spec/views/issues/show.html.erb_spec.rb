require 'spec_helper'

describe "issues/show.html.erb" do
  before(:each) do
    @issue = assign(:issue, stub_model(Issue,
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
  end
end
