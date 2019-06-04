Rails.application.routes.draw do
  devise_for :users
  resources :events
  resources :communities
  resources :sites
  resources :comunas
  resources :profiles

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
