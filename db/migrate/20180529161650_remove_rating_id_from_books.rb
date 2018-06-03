class RemoveRatingIdFromBooks < ActiveRecord::Migration[5.1]
  def change
    remove_column :books, :rating_id
  end
end
