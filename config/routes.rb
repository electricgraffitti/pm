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

  root :to => "pages#index"

end
