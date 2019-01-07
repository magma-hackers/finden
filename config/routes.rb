Rails.application.routes.draw do

  resources :viewers

  get 'personals/index'
  get 'personals/new'
  get 'personals/edit'

  resources :visoria
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
