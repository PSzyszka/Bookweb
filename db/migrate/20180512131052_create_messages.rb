class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.text :description
      t.string :email,              null: false, default: ""
    end
  end
end
