class Restaurant < ActiveRecord::Base
  belongs_to :neighborhood
  has_many :tacos
  belongs_to :user
end
