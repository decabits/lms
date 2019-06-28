class Assignment < ApplicationRecord
  belongs_to :track_item
  has_many :comments
end
