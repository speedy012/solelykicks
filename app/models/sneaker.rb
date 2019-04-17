class Sneaker < ApplicationRecord
  belongs_to :brand
  has_many :users, through: :likes
end
