# frozen_string_literal: true

Rails.application.routes.draw do
  root 'contents#index'

  get '/contents', to: 'contents#show'
end
