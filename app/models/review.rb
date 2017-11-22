class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true,
    message: "%{value} must be an integer" }
  validates :rating, inclusion: { in: (0..5),
  message: "%{value} is not a valid rating" }

end
