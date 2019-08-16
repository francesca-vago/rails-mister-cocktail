Rails.application.routes.draw do

  root to: 'cocktails#index'

  resources :cocktails, except: [:index] do
    resources :doses, only: [:new, :create, :edit, :update]
  end
  resources :doses, only: [:destroy]
end
