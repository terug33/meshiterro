Rails.application.routes.draw do
  
  devise_for :users
  get 'homes/top' => "homes#top"
  root "homes#top"

  resources :post_images, only:[:new,:create, :index, :show]

  get 'homes/about' => 'homes#about', as: :about
  
end
