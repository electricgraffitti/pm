class PagesController < ApplicationController
  
  def index
    @issue = Issue.first
    
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
  
end
