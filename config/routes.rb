Rails.application.routes.draw do
  get 'contatos/index'
  resources :contatos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'contatos#index'
end
