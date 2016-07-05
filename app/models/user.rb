class User < ActiveRecord::Base
  has_many :neighborhoods
  has_many :restaurants, through: :favorites
  has_many :tacos, through: :favorites
end
