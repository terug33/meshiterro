Rails.application.routes.draw do
  get 'homes/top' => "homes#top"
  root "homes#top"
  
end
