class RemoveTrackItemIdFromAssignments < ActiveRecord::Migration[5.2]
  def change
    remove_column :assignments, :track_item_id, :string
  end
end
