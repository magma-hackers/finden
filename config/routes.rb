Rails.application.routes.draw do
  resources :information_personals
  resources :viewers
  resources :visoria do
    get '/assist', to: 'visoria#assist', as: :assist
    get '/my_assist', to: 'visoria#my_assist', as: :my_assist
    get '/destroy_assist', to: 'visoria#destroy_assist', as: :destroy_assist
    get '/inscription_list', to: 'visoria#inscription_list', as: :inscription_list
    get '/print_list_pdf', to: 'visoria#print_list_pdf', as: :print_list_pdf
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
