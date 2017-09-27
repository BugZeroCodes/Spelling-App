class Word < ApplicationRecord
  belongs_to :list

  validates :text, :list_id, presence: true
end
