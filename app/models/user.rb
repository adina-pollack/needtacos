class User < ActiveRecord::Base
  has_many :neighborhoods
  has_many :restaurants
  has_many :tacos
end
