# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments
  end
  root 'posts#index'
  namespace :api do
    namespace :v1 do
      resources :posts
    end
  end
end
