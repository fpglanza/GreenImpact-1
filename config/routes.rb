Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  resources :flats
  resources :offers

  get "/path/users/page", to: "users#show", as: "users"
  get "/path/offersnew/page", to: "offers#new", as: "offersnew"
  

end
