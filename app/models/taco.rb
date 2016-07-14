class Taco < ActiveRecord::Base
  # NHO: since tacos are pretty central to this app, would make sense to add some validations to prevent bad taco data!
  belongs_to :restaurant
  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites
end
