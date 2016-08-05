class Comment < ApplicationRecord
  belongs_to :recipe
  validates :commenter, presence: true,
  length: { minimum: 2 }
end
