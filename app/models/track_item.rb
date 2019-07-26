class TrackItem < ApplicationRecord
  validates :topic, presence: true
  validates :item_type, presence: true
  validates :track_id, presence: true

  belongs_to :track
  has_many :assignments
end
