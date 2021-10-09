Rails.application.routes.draw do
  root 'pages#index'
#   devise_for :users, controllers: {
#   registrations: 'users/registrations',
#   sessions     : 'users/sessions'
# }
# deviceのregistrations宛にリクエストがきた場合に、代わりにuserscontrollerのregistrationを動かす
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'} do
      match "users/:user_id/sign_up" => "registrations#new", :as => :new__user_registration
  end
  resources :users
  resources :pages
  # get 'pages/index'
  # get 'pages/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end