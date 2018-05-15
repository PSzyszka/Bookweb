class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :description, null: false
      t.references :book, index: true, null: false
      t.references :user, index: true, null: false

      t.timestamps
    end

    add_index :comments, [:book_id, :user_id], unique: true
  end
end