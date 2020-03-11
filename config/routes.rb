Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :grannies, only:[:index, :create, :new, :show, :destroy, :edit, :update] do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bookings, only: [:create]
  end
end
