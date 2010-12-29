require 'spec_helper'

describe AdminSessionsController do

  def mock_admin_session(stubs={})
    (@mock_admin_session ||= mock_model(AdminSession).as_null_object).tap do |admin_session|
      admin_session.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET new" do
    it "assigns a new admin_session as @admin_session" do
      AdminSession.stub(:new) { mock_admin_session }
      get :new
      assigns(:admin_session).should be(mock_admin_session)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created admin_session as @admin_session" do
        AdminSession.stub(:new).with({'these' => 'params'}) { mock_admin_session(:save => true) }
        post :create, :admin_session => {'these' => 'params'}
        assigns(:admin_session).should be(mock_admin_session)
      end

      it "redirects to the created admin_session" do
        AdminSession.stub(:new) { mock_admin_session(:save => true) }
        post :create, :admin_session => {}
        response.should redirect_to(admin_session_url(mock_admin_session))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved admin_session as @admin_session" do
        AdminSession.stub(:new).with({'these' => 'params'}) { mock_admin_session(:save => false) }
        post :create, :admin_session => {'these' => 'params'}
        assigns(:admin_session).should be(mock_admin_session)
      end

      it "re-renders the 'new' template" do
        AdminSession.stub(:new) { mock_admin_session(:save => false) }
        post :create, :admin_session => {}
        response.should render_template("new")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested admin_session" do
      AdminSession.should_receive(:find).with("37") { mock_admin_session }
      mock_admin_session.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the admin_sessions list" do
      AdminSession.stub(:find) { mock_admin_session }
      delete :destroy, :id => "1"
      response.should redirect_to(admin_sessions_url)
    end
  end

end
