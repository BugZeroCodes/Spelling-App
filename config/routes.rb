Rails.application.routes.draw do
  resources :lists
  get 'words/by_type/:word_type' => 'words#filter_by_word_type', as: :word_type
  resources :words
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'words#index'
end
