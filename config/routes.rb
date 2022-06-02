Rails.application.routes.draw do
  
  devise_for :users
  get 'album/index'
  root to: 'albums#index'
  resources :albums do
    resources :songs
  end
end
