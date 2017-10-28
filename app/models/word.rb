class Word < ApplicationRecord
  enum type: [:review_word, :challenge_word, :pattern_word, :memory_word]
  belongs_to :list

  validates :text, presence: true
end
