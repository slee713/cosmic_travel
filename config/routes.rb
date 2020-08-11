Rails.application.routes.draw do
  get 'abouts/index'
  resources :missions, only: [:new, :create]
  resources :scientists
  resources :planets
  get '/about', to: "abouts#index", as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
