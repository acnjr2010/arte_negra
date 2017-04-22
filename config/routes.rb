Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'users/index'

  devise_for :users
  root 'welcome#index'

  get "/admin", controller: 'users', action: 'index'
end
