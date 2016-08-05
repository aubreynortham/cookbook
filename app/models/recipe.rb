class Recipe < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :dish, presence: true,
            length: { minimum: 3 }
end
