Rails.application.routes.draw do

resources :message , only[:new, :create, :edit, :delete, :index]

resources :applicant , only[:show, :delete, :index]

resources :project , only[:new, :create,:show, :edit, :delete, :index]

resources :user , only[:new, :create,:show, :edit, :delete]

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: "home#index"

end
