class Favorite < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :taco
  belongs_to :user
end
