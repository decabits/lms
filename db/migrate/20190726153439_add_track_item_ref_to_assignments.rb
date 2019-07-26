class AddTrackItemRefToAssignments < ActiveRecord::Migration[5.2]
  def change
    add_reference :assignments, :track_item, foreign_key: true
  end
end
