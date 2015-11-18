Rails.application.routes.draw do

  root "home#index"

  resources :projects , only: [:new, :create,:show, :edit, :delete, :index] do
    resources :applicants , only: [:show, :delete, :index]
  end

  resources :messages, only: [:new, :create, :edit, :delete, :index]

  resources :users , only: [:new, :create,:show, :edit, :delete]
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

end
