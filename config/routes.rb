Rails.application.routes.draw do
  resources :documents
  resources :data_packages
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
