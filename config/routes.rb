Rails.application.routes.draw do
  devise_for :users
  # root 'pages#home'
  root 'posts#index'
  resources :posts
end
