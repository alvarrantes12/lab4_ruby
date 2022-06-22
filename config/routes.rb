Rails.application.routes.draw do
  resources :directors
  #resources :movies
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  scope module: :api do
    resources :movies
  end


  # Defines the root path route ("/")
  # root "articles#index"
end
