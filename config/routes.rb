Rails.application.routes.draw do
  scope module: :api do
    resources :movies
  end
end
