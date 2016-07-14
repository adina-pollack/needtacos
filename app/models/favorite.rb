class Favorite < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :taco
  belongs_to :user
  # NHO: great usecase for scope!
  scope :tacos,   -> { where(restaurant_id: nil) }
  scope :restaurants, -> {where(taco_id: nil)}
  # NHO: one future idea for refactoring is to make favorite have a polymorphic relationship between Restaurant and Tacos
  # checkout this article for info here: https://launchschool.com/blog/understanding-polymorphic-associations-in-rails
end
