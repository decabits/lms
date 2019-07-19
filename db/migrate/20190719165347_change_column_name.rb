class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :tracks, :category, :name
  end
end
