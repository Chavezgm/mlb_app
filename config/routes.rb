Rails.application.routes.draw do
  resources :teams, only: [:index, :show] do
    resources :players, only: [:index, :show]
  end
  root 'teams#index'
end
