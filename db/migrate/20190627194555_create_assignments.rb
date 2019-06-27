class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.belongs_to :track_item
      t.string :description
      t.timestamps
    end
  end
end
