Rails.application.routes.draw do

  get 'message/new'

  get 'message/create'

  get 'message/edit'

  get 'message/delete'

  get 'message/index'

  get 'applicant/show'

  get 'applicant/delete'

  get 'applicant/index'

  get 'project/new'

  get 'project/create'

  get 'project/show'

  get 'project/edit'

  get 'project/delete'

  get 'user/new'

  get 'user/create'

  get 'user/show'

  get 'user/edit'

  get 'user/delete'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: "home#index"
end
