class Neighborhood < ActiveRecord::Base
  has_many :restaurants, dependent: :destroy
  belongs_to :user
end
