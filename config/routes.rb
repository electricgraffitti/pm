Profilermag::Application.routes.draw do
  
  resources :admin_sessions
  resources :admins
  resources :articles
  resources :issues
  
  # Login/Logout Paths
  match "admin-login" => "admin_sessions#new", :as => :login
  match "admin-logout" => "admin_sessions#destroy", :as => :logout
  
  # Custom Paths
  match "admin-dashboard" => "pages#dashboard", :as => :dashboard
  match "admin-issue(/:id)" => "issues#admin_issue_show", :as => :admin_issue
  match "contact-profiler-magazine" => "pages#contact_us", :as => :contact
  match "thank-you" => "pages#thank_you", :as => :thank_you
  match "91busted" => "pages#busted", :as => :busted
  
  # Ajax Routes
  match "index-banner" => "ajax#index_banner", :as => :index_banner
  match "index-color-boxes" => "ajax#index_color_boxes", :as => :index_color_box

  root :to => "pages#index"

end
