require "spec_helper"

describe AdminSessionsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/admin_sessions" }.should route_to(:controller => "admin_sessions", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/admin_sessions/new" }.should route_to(:controller => "admin_sessions", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/admin_sessions/1" }.should route_to(:controller => "admin_sessions", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/admin_sessions/1/edit" }.should route_to(:controller => "admin_sessions", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/admin_sessions" }.should route_to(:controller => "admin_sessions", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/admin_sessions/1" }.should route_to(:controller => "admin_sessions", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/admin_sessions/1" }.should route_to(:controller => "admin_sessions", :action => "destroy", :id => "1")
    end

  end
end
