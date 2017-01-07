Rails.application.routes.draw do

  get "log_in" => "sessions#new", :as => "log_in"
  get "log_out" => "sessions#destroy", :as => "log_out"

  resources :sessions

  resources :admins, only: [:new, :create], path_names: {new: 'sign_up'}

  resources :photos

  root 'pages#index'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
