Rails.application.routes.draw do
  get 'search/results'
  get 'addcarts/index'
  get '/addproduct/:id', to:'addcarts#addproduct', as: 'addproduct'
  get '/removeproduct/:id', to:'addcarts#removeproduct', as: 'removeproduct'

  resources :products,:addcarts
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "homes#index"
   get '/search', to: 'search#results'

end
