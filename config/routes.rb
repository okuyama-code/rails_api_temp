Rails.application.routes.draw do
  post 'api/v1/auth/:provider/callback', to: 'api/v1/users#create'

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show]
    end
  end
end
