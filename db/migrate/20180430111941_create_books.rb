class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :name
      t.text :description
      t.integer :rating
      t.string :year_of_release
      t.references :genre, index: true
      t.references :publisher, index: true
      t.references :author, index: true

      t.timestamps
    end
  end
end
