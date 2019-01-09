Rails.application.routes.draw do
  resources :viewers
  resources :visoria do
    get '/assist', to: 'visoria#assist', as: :assist
    get '/my_assist', to: 'visoria#my_assist', as: :my_assist
    get '/destroy_assist', to: 'visoria#destroy_assist', as: :destroy_assist
  end

  get 'pages/contact'
  get 'pages/faq'
  get 'pages/about'
  devise_for :users, controllers: { 
    omniauth_callbacks:  'users/omniauth_callbacks'
  }
  root 'welcome#index'
  resources :teams
  resources :techniques
  resources :contractuals
end
