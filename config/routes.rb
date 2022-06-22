Rails.application.routes.draw do
  resources :directors

  scope module: :api, path: 'api' do
    resources :movies
  end
  
end
