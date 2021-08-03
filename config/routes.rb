Rails.application.routes.draw do
  root "store#index", as: 'store_index'
  resources :orders
  resources :line_items
  resources :carts
  resources :products do
    get :who_bought, on: :member
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
    