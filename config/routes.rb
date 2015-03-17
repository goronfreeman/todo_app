Rails.application.routes.draw do
  root 'static_pages#home'
  devise_for :users

  resources :tasks do
    member do
      put :set_complete, as: :complete
    end
  end
end
