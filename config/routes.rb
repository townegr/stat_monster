Rails.application.routes.draw do
  root 'home#index'

  resources :players do
    resources :player_analyses
  end
end
