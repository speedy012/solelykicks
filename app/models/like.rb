class Like < ApplicationRecord
  belongs_to :user
  belongs_to :sneaker
  has_one :brand, through: :sneaker

  validates_uniqueness_of :user_id, scope: :sneaker_id

end
