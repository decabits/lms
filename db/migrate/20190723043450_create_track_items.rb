class CreateTrackItems < ActiveRecord::Migration[5.2]
  def change
    create_table :track_items do |t|
      t.string :topic
      t.string :item_type

      t.timestamps
    end
  end
end
