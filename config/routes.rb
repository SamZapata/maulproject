Rails.application.routes.draw do
  resources :events
  resources :communities
  resources :sites
  resources :comunas
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
