class Like < ApplicationRecord
  belongs_to :user
  belongs_to :sneaker
  has_one :brand, through: :sneaker

  validates :sneaker_id, presence: true, uniqueness: true

end
