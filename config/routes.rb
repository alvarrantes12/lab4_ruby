Rails.application.routes.draw do
  resources :directors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  scope module: :api do 
    resources :movies
  end  
end
