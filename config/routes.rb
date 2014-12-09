Rails.application.routes.draw do
  root 'home#index'

  resources :player_analyses, only: [:new, :create]

  # get '/report' => 'player_analyses#report'
end
