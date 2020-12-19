Rails.application.routes.draw do
  get 'basic-qr-code-reader', to: 'basic_qr_codes#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  resources :offers
  resources :qr_codes, only: [:new, :create, :show]
  get "/path/users/page", to: "users#show", as: "users"
  get "/path/offersnew/page", to: "offers#new", as: "offersnew"
  

end
