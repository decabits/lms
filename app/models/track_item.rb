class TrackItem < ApplicationRecord
  validates :topic, presence: true
  validates :item_type, presence: true

  belongs_to :track
end
