Rails.application.routes.draw do
  resources :furnitures, :room_furnitures, :rooms, only: [:show, :index]
  resources :users, :saved_rooms

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
