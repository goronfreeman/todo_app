Rails.application.routes.draw do
  devise_for :users

  resources :tasks do
  end
end
