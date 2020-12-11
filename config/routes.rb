Rails.application.routes.draw do
  resources :user_streams, only: :show
end
