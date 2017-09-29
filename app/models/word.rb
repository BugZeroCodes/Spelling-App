class Word < ApplicationRecord
  belongs_to :list

  validates :text, presence: true
end
