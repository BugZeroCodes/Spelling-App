class Word < ApplicationRecord
  enum word_type: [:review_word, :challenge_word, :pattern_word, :memory_word]
  belongs_to :list

  validates :text, presence: true
  paginates_per 10
end
