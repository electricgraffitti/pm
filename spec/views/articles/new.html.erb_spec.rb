require 'spec_helper'

describe "articles/new.html.erb" do
  before(:each) do
    assign(:article, stub_model(Article,
      :title => "MyString",
      :featured => false,
      :banner => false,
      :color_box_id => 1,
      :article_url => "MyString",
      :issue_id => 1
    ).as_new_record)
  end

  it "renders new article form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => articles_path, :method => "post" do
      assert_select "input#article_title", :name => "article[title]"
      assert_select "input#article_featured", :name => "article[featured]"
      assert_select "input#article_banner", :name => "article[banner]"
      assert_select "input#article_color_box_id", :name => "article[color_box_id]"
      assert_select "input#article_article_url", :name => "article[article_url]"
      assert_select "input#article_issue_id", :name => "article[issue_id]"
    end
  end
end
