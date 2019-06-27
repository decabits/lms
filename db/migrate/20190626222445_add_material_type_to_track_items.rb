class AddMaterialTypeToTrackItems < ActiveRecord::Migration[5.2]
  def change
    add_column :track_items, :material_type, :string
  end
end
