class Track < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :track_items
  has_many :assignments
end
