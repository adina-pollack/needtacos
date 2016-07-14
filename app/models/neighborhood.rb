class Neighborhood < ActiveRecord::Base
  has_many :restaurants, dependent: :destroy
  belongs_to :user # NHO: Does a Neighborhood need to belong to a user?
end
