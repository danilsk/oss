# frozen_string_literal: true

Rails.application.routes.draw do
  scope '/api' do
    get '/test', to: 'test#index'
  end
  get '/', '*path', to: 'test#serve_frontend'
end
