Rails.application.routes.draw do
  resources :furnitures
  resources :room_furnatures
  resources :saved_rooms
  resources :users
  resources :rooms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
