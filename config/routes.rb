Rails.application.routes.draw do
  root 'pages#index'
#   devise_for :users, controllers: {
#   registrations: 'users/registrations',
#   sessions     : 'users/sessions'
# }
  devise_for :users
  get 'pages/index'
  get 'pages/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
