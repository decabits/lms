class Assignment < ApplicationRecord
  belongs_to :track_item
  belongs_to :track
  has_many :comments
end
