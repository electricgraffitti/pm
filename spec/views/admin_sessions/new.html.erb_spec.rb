require 'spec_helper'

describe "admin_sessions/new.html.erb" do
  before(:each) do
    assign(:admin_session, stub_model(AdminSession).as_new_record)
  end

  it "renders new admin_session form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_sessions_path, :method => "post" do
    end
  end
end
