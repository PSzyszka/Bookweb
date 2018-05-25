class Rating < ApplicationRecord
  belongs_to :author, optional: true
  belongs_to :book, optional: true

  validates :vote, presence: true

  def self.average_of_votes(current_author_id)
    ratings = Rating.where(author_id: current_author_id)
    count = ratings.count
    (ratings.select(:vote).calculate(:sum, :vote)/count).round(1)
  end
end
