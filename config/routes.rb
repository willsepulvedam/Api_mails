Rails.application.routes.draw do
  resources :email_lists, only: [:index, :create]
end
