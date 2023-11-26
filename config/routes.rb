# frozen_string_literal: true

Rails.application.routes.draw do
  resources :skills
  resources :engineers
  root 'application#index'
end
