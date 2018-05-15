class Publishers < ActiveRecord::Migration[5.1]
  def change
    create_table :publishers do |t|
      t.string :name
      t.string :city
      t.integer :count_of_published_books
      t.references :book, index: true
      t.references :author, index: true
      t.references :genre, index: true

      t.timestamps
    end
  end
end
