Profilermag::Application.routes.draw do

  resources :admins

  resources :articles

  resources :issues

  root :to => "pages#index"

end
