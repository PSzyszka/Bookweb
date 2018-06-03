class Rating < ApplicationRecord
  belongs_to :author, optional: true
  belongs_to :book, optional: true

  validates :vote, presence: true

  def self.average_of_votes(current_id, relation_name)
    if relation_name == 'book'
      ratings = Rating.where(book_id: current_id)
    else
      ratings = Rating.where(author_id: current_id)
    end
    count = ratings.count
    if count == 0
      nil
    else
      (ratings.select(:vote).calculate(:sum, :vote)/count).round(1)
    end
  end
end
