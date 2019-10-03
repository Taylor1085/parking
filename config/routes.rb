# frozen_string_literal: true

Rails.application.routes.draw do
  get 'about/index'
  get '/tickets', to: 'tickets#index'
  get '/tickets/:id', to: 'tickets#show', id: /\d+/
  get '/drivers', to: 'drivers#index'
  get '/drivers/:id', to: 'drivers#show', id: /\d+/
  get '/drivers/:id/payments', to: 'payments#show', id: /\d+/
  get '/about', to: 'about#index'

  root to: 'tickets#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
