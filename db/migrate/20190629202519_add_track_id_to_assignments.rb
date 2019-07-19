class AddTrackIdToAssignments < ActiveRecord::Migration[5.2]
  def change
    add_column :assignments, :track_id, :string
  end
end
