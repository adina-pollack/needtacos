class Restaurant < ActiveRecord::Base
  belongs_to :neighborhood
  has_many :tacos, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites
end
