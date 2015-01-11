Rails.application.routes.draw do
  namespace :api do
    resources :markets, only: [:index, :show], format: false
  end
end
