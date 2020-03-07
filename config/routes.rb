# application routes 
Rails.application.routes.draw do
  get 'orders/new'
  resources :products
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'
  get "orders", to: "orders#new", as: "new_order"
  post "/orders/webhook", to: "orders#webhook"
  get "/orders/complete", to: "orders#complete"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
