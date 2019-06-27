class TrackItem < ApplicationRecord
  belongs_to :track
  has_many :assignments
end
