class AddAuthorReferenceToRatings < ActiveRecord::Migration[5.1]
  def change
    add_reference :ratings, :author, index: true
    add_reference :ratings, :book, index: true
  end
end
