# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'restaurants#index'
  resources :restaurants, only: %i[index show new create] do
    resources :reviews, only: [:create]
  end
end
