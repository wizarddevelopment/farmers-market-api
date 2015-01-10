Rails.application.routes.draw do
  namespace :api do
    get 'market' => 'market#all'
  end
end
