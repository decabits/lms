class CreateTrackItems < ActiveRecord::Migration[5.2]
  def change
    create_table :track_items do |t|
      t.belongs_to :track
      t.string :item
      t.timestamps
    end
  end
end
