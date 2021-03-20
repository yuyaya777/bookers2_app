Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'homes#top'
  get 'top' => 'homes#top', as: 'top'
  get 'about' => 'homes#about', as: 'about'
  resources :books, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:edit, :index, :show]


end
