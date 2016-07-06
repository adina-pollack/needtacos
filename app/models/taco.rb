class Taco < ActiveRecord::Base
  belongs_to :restaurant
  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites
end
