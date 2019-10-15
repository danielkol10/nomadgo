# frozen_string_literal: true

Rails.application.routes.draw do
  root 'cities#index'
  # set cities without /cities, put at button to override any preceding routes.
  resources :cities, path: '', only: %i[index show] do
    resource :guide, only: :show
  end
end
