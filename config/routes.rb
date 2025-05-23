Rails.application.routes.draw do
  
  resources :users, only:[:show,:edit]
  
  devise_for :users
  get 'homes/top' => "homes#top"
  root "homes#top"

  resources :post_images, only:[:new,:create, :index, :show,:destroy]

  get 'homes/about' => 'homes#about', as: :about
  
end
