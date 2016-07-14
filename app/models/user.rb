class User < ActiveRecord::Base
  has_many :neighborhoods # NHO: is this relationship necessary?
  has_many :favorites
  has_many :restaurants, through: :favorites
  has_many :tacos, through: :favorites
end
