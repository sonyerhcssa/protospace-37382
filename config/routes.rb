Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"

  resources :prototypes do
    resources :comments
  end
  #devise_for :usersの記述がある為、いらない。
  # resources :users

end