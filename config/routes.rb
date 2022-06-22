Rails.application.routes.draw do
  resources :movie_directors
  scope module: :api do
    resources :movies
  end
end
