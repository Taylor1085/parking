# frozen_string_literal: true

Rails.application.routes.draw do
  resources :tickets, only: %i[index show]
  resources :drivers, only: %i[index show]
  resources :about, only: %i[index]

  root to: 'tickets#index'
end
