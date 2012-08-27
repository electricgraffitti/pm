class PagesController < ApplicationController
  
  before_filter :require_admin, :only => [:dashboard]

  
  def index
    @issue = Issue.active_issue.last
    
    respond_to do |format|
      format.html
    end
  end
  
  def dashboard
    @issues = Issue.all
    
    respond_to do |format|
      format.html { render :layout => 'admin' }
    end
  end
  
  def contact_us
    
    respond_to do |format|
      format.html
    end
  end
  
  def thank_you
    
    respond_to do |format|
      format.html
    end
  end
  
  def busted
    redirect_to "http://www2.hcinsight.com/91-busted"
  end
  
  def subscribe
    @subscribe = "subscription_page"
  end
  
end
