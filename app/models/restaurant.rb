class Restaurant < ActiveRecord::Base
  belongs_to :neighborhood
  has_many :tacos
  has_many :favorites
  has_many :users, through: :favorites
end
