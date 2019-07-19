class RemoveTrackIdFromAssignments < ActiveRecord::Migration[5.2]
  def change
    remove_column :assignments, :track_id, :integer
  end
end
