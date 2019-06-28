class AddTrackItemIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :track_item_id, :integer
  end
end
