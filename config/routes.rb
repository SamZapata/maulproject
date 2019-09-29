Rails.application.routes.draw do
  resources :categories
  devise_for :users
  resources :events
  resources :communities
  resources :sites
  resources :comunas
  resources :profiles

  get 'sites/comuna/load_sites', to: 'sites#load_sites', as: :load_sites

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
