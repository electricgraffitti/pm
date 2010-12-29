require 'spec_helper'

describe "articles/show.html.erb" do
  before(:each) do
    @article = assign(:article, stub_model(Article,
      :title => "Title",
      :featured => false,
      :banner => false,
      :color_box_id => 1,
      :article_url => "Article Url",
      :issue_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Article Url/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
