Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#index'
  #[Jerry] add for store page
  get 'shop' => 'pages#shop'

  #[Jerry] add for we create the cart model by oursefl
  resources :carts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
