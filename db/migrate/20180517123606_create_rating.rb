class CreateRating < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.float :vote
      t.references :user, index: true
    end
  end
end
