Rails.application.routes.draw do
  devise_for :users
  get 'homes/top' => "homes#top"
  root "homes#top"

  get 'homes/about' => 'homes#about', as: :about
  
end
