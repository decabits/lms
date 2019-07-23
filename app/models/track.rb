class Track < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  
  has_and_belongs_to_many :users
  has_many :track_items
  has_many :assignments
end
