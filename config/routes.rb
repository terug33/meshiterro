Rails.application.routes.draw do
  
  devise_for :users
  resources :users, only:[:show,:edit,:update]
  
  
  get 'homes/top' => "homes#top"
  root "homes#top"

  resources :post_images, only:[:new,:create, :index, :show,:destroy]

  get 'homes/about' => 'homes#about', as: :about
  
end
