# frozen_string_literal: true

Rails.application.routes.draw do
  root 'contents#index'

  get '/contents', to: 'contents#show'
  post '/contents', to: 'contents#create'
  delete '/contents/:id', to: 'contents#destroy', as: :delete_content
end
