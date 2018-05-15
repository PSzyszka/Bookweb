class AddOriginalLanguageAndTranslatedIntoAndNumberOfPagesToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :original_language, :string
    add_column :books, :number_of_pages, :string
    add_column :books, :translated_into, :string
  end
end
