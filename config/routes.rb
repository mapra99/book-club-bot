require 'sidekiq/web'

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resource :health, only: %i[show], controller: :health
  mount Sidekiq::Web, at: '/eng/sidekiq'
end
