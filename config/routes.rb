Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :posts
  resource :users , except: [:destroy , :new] do
    get :sign_up
    get :sign_in
  end  

  root to: 'homes#index'


  resource :sessions , only: [:create, :destroy]


end
