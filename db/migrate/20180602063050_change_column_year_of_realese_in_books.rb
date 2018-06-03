class ChangeColumnYearOfRealeseInBooks < ActiveRecord::Migration[5.1]
  def change
    change_column :books, :year_of_release, :date
  end
end
