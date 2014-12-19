Rails.application.routes.draw do
  devise_for :users

  resources :actors do
    resources :comments, module: :actors
  end
  resources :films do
    resource :comments, module: :films
  end

  root to: "films#index"
end
