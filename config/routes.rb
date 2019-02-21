Rails.application.routes.draw do
  devise_for :users
  get 'contatos/index'
  resources :contatos
  resources :tipos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'contatos#index'
end
