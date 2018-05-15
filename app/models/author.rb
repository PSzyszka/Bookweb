class Author < ApplicationRecord
  has_many :books
  has_many :publishers, through: :publishersauthor

  validates :first_name, :last_name, :birth_date, :description, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end

  def created_books
    author.books.count
  end
end
