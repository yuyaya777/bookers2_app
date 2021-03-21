Rails.application.routes.draw do
  devise_for :users
  get 'users/show'
  root to: 'homes#top'
  get 'top' => 'homes#top', as: 'top'
  get 'about' => 'homes#about', as: 'about'
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:edit, :index, :show, :update]
end
