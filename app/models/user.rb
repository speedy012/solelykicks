class User < ApplicationRecord
  has_many :likes
  has_many :sneakers, through: :likes

  validates :name, :presence => true, :uniqueness => true

end
