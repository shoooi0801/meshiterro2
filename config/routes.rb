Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  root to: 'homes#top'
  devise_for :users

  get "/homes/about" => "homes#about", as: "about"
  resources :users, only: [:show, :edit, :update]

  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
  resources :post_comments, only: [:create, :destroy]
  end
end
