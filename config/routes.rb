Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  resources :flats
  resources :offers
  resources :sports
  resources :sneakers

  get "/path/offersnew/page", to: "offers#new", as: "offersnew"
  get "/path/share", to: "pages#share", as: "pagesshare"
  get "/path/questions", to: "pages#questions", as: "pagesquestions"
  get "/path/users/:id/show", to: "users#show", as: "usersshow"

  get "/path/users/addpoints", to: "winpoints#update", as: :user_add_points
  # get "/path/users/:id/points", to: "winpoints#update", as: :user_add_points
end
