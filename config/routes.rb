Rails.application.routes.draw do
  root to: 'phrases#index'
  resources :phrases, only: :index do
    get :random_fact, on: :collection
  end
end
