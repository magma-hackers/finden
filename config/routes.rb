Rails.application.routes.draw do
  get 'pages/contact'
  get 'pages/faq'
  get 'pages/about'
  devise_for :users, controllers: { omniauth_callbacks:  'users/omniauth_callbacks' }
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
