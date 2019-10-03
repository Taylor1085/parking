# frozen_string_literal: true

Rails.application.routes.draw do
  get '/tickets', to: 'tickets#index'
  get '/tickets/:id', to: 'tickets#show', id: /\d+/

  root to: 'tickets#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
