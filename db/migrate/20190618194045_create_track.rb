class CreateTrack < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.string :category
      t.text :description
    end
  end
end
