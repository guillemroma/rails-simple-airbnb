class Flat < ApplicationRecord
   CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  #validates :content, presence: true
  #validates :rating, presence: true
  validates :price_per_night, numericality: { only_integer: true }
  validates :number_of_guests, numericality: { only_integer: true }

  #validates :rating, inclusion: { in: RATINGS, message: "This is not a valid category" }

end
