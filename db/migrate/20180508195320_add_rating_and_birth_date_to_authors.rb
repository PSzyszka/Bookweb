class AddRatingAndBirthDateToAuthors < ActiveRecord::Migration[5.1]
  def change
    add_column :authors, :birth_date, :date
  end
end
