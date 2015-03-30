Rails.application.routes.draw do
  root 'static_pages#home'
  devise_for :users

  resources :tasks do
    member do
      put :set_complete, as: :complete
    end
    collection do
      get :complete, defaults: { format: :'json' }
      get :incomplete, defaults: { format: :'json' }
    end
  end
end
