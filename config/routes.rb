Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'posts#index'
  resources :posts
  devise_for :users, controllers: {
    registrations: 'registrations',
    confirmations: 'confirmations'
  }

  as :user do
    put '/users/confirmation' => 'confirmations#update', via: :patch, as: :update_user_confirmation
  end
end
