Rails.application.routes.draw do
  post 'api/v1/auth/:provider/callback', to: 'api/v1/users#create'
end
