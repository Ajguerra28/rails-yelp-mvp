Rails.application.routes.draw do
  resources :restaurants, except: %w[edit update destroy] do
    resources :reviews, only: %w[create]
  end

  root 'restaurants#index'
end
