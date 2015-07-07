Rails.application.routes.draw do
  root "home#index"

  devise_for :users, controllers: {
        :omniauth_callbacks => "users/omniauth_callbacks"
      }

  devise_scope :user do
      get 'sign_out', :to => 'devise/sessions#destroy'
  end

  resources :tablets
end
