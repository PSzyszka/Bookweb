class Book < ApplicationRecord
  belongs_to :genre
  belongs_to :author
  belongs_to :publisher
  has_many :comments

  validates :title, :description, :rating, :year_of_release, presence: true
  validates :original_language, :number_of_pages, :translated_into, presence: true

  def self.search(search_criteria)
    if search_criteria == nil || search_criteria.empty?
      Book.all
    else
      books = Book.all

      title = genre_name = search_criteria[:search]
      books = Book.joins(:genre).where("title LIKE :title", title: "%#{title}%")
        .or(Book.joins(:genre).merge(Genre.where("genre LIKE ?", "%#{genre_name}%")))
    end
  end
end
