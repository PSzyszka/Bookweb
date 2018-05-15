class RemoveColumnNameFromAuthors < ActiveRecord::Migration[5.1]
  def change
    remove_column :authors, :name
  end
end
