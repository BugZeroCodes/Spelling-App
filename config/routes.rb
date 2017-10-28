Rails.application.routes.draw do
  get 'lists/by_grade_number/:grade_number' => 'lists#filter_by_grade_number', as: :grade_number
  resources :lists
  get 'words/by_type/:word_type' => 'words#filter_by_word_type', as: :word_type
  get 'words/by_list/:list_id' => 'words#filter_by_list', as: :words_by_list
  resources :words
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'lists#index'
end
