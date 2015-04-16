Rails.application.routes.draw do
  root 'static_pages#home'
  devise_for :users

  resources :tasks do
    member do
      put :set_complete, as: :complete
      post :ajax_set_complete, as: :ajax_set_complete
    end

    collection do
      get :complete, defaults: { format: :'json' }
      get :incomplete, defaults: { format: :'json' }
    end
  end
end
