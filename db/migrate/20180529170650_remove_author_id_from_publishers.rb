class RemoveAuthorIdFromPublishers < ActiveRecord::Migration[5.1]
  def change
    remove_column :publishers, :author_id
  end
end
