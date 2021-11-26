Rails.application.routes.draw do
  root 'posts#index'
#   devise_for :users, controllers: {
#   registrations: 'users/registrations',
#   sessions     : 'users/sessions'
# }
# deviceのregistrations宛にリクエストがきた場合に、代わりにuserscontrollerのregistrationを動かす
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'} do
      match "users/:user_id/sign_up" => "registrations#new", :as => :new__user_registration
  end
  resources :users do
    member do
      get :likes
    end
  end
  resources :entries, only: [:new, :create]
  resources :stundents
  resources :researchers

  Rails.application.routes.draw do
    resources :posts do
      resource :likes, only: [:create, :destroy]
    end
  end
  post 'like/:id' => 'likes#create', as: 'create_like'
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'
  require 'sidekiq/web'
  mount Sidekiq::Web, at: "/sidekiq"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end