class AddTrackRefToTrackItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :track_items, :track, foreign_key: true
  end
end
