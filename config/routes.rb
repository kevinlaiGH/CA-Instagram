Rails.application.routes.draw do
  resources :photos
  # get 'landing/index'
  root "home#landing"

  resources :photos, only: [:new, :create, :index, :edit, :update]

  root 'photos#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
