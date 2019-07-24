class Track < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true

  has_many :track_items
end
