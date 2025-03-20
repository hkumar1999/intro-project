Rails.application.routes.draw do
  root "dogs#index"

  resources :dogs, only: [:index, :show]
  resources :owners, only: [:index, :show]
  resources :adoption_centers, only: [:index, :show]
  resources :user_reviews, only: [:index, :show]
end
