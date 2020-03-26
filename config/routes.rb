Rails.application.routes.draw do
  resources :room_furnitures, :rooms, only: [:show, :index]
  resources :users, :saved_rooms, :furnitures

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
