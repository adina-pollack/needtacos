class Restaurant < ActiveRecord::Base
  belongs_to :neighborhood
  has_many :tacos
end
