class Restaurant < ActiveRecord::Base
  # NHO: could be a good idea to come back and add validations to your models!
  belongs_to :neighborhood
  has_many :tacos, dependent: :destroy
  has_many :favorites
  has_many :users, through: :favorites
end
