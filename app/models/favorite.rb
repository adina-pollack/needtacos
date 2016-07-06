class Favorite < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :taco
  belongs_to :user
  scope :tacos,   -> { where(restaurant_id: nil) }
  scope :restaurants, -> {where(taco_id: nil)}
end
