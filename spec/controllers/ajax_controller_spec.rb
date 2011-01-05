require 'spec_helper'

describe AjaxController do

  describe "GET 'index_banner'" do
    it "should be successful" do
      get 'index_banner'
      response.should be_success
    end
  end

  describe "GET 'index_color_boxes'" do
    it "should be successful" do
      get 'index_color_boxes'
      response.should be_success
    end
  end

end
