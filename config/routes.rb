Rails.application.routes.draw do

  devise_for :users
  resources :lists

  resources :lists do
    resources :items
  end

  root 'lists#index'
  
end
