Rails.application.routes.draw do
  namespace :api do
  get 'market/all'
  end

  namespace :api, constraints: { format: :json } do
    get 'market' => 'market#all'
  end
end
