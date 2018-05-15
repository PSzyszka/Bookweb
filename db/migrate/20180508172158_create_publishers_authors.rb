class CreatePublishersAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :publishers_authors do |t|
      t.references :author, index: true
      t.references :publisher, index: true

      t.timestamps
    end
  end
end
