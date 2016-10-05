Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  get 'about/index' 
  resources :pedidos
  resources :itens 
  resources :itenslistagem, only: [:index]
  resources :produtos
  devise_for :useres   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
