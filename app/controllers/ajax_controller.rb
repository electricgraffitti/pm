class AjaxController < ApplicationController
  
  def index_banner
    @issue = Issue.find(params[:id])
    
    respond_to do |format|
      format.json { render :layout => false }
    end
  end

  def index_color_boxes
    @issue = Issue.find(params[:id])
    
    respond_to do |format|
      format.json { render :layout => false }
    end
  end

end
