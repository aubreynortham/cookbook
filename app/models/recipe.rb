class Recipe < ApplicationRecord
  validates :dish, presence: true,
                      length: { minimum: 3 }
end
