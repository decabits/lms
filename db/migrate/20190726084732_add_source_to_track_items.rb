class AddSourceToTrackItems < ActiveRecord::Migration[5.2]
  def change
  	add_column :track_items, :source, :string
  end
end
