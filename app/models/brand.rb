class Brand < ApplicationRecord
  has_many :sneakers
  has_many :likes, through: :sneakers
end
