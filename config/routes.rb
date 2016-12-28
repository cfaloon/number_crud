Rails.application.routes.draw do
  # application resources
  resources :number_records

  # devise routes
  devise_for :users

  root "number_records#index"
end
