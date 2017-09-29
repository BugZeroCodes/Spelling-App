Rails.application.routes.draw do
  resources :lists
  resources :words
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'words#index'

  get 'words#clear_words'
end
