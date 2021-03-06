Rails.application.routes.draw do

  get 'project_job/show'

  get 'project_job/new'

  get 'project_job/edit'

  get 'project_job/destroy'

  root "home#index"

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :projects , only: [:new, :create,:show, :edit, :delete, :index] do
    resources :projects_jobs , only: [:show, :delete, :index] do
      resources :applicants , only: [:show, :delete, :index]
    end
  end

  resources :messages, only: [:new, :create, :edit, :delete, :index]


end
