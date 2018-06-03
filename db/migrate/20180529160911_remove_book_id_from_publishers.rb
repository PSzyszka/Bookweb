class RemoveBookIdFromPublishers < ActiveRecord::Migration[5.1]
  def change
    remove_column :publishers, :book_id
  end
end
