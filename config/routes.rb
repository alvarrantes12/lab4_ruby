Rails.application.routes.draw do
  resources :directors
  #resources :movies

  scope module: :api do
    resources :movies
  end
  #scope module: :api, path: "api" do
   # resources :movies
 # end
end
