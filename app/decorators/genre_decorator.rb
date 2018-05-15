class GenreDecorator < Draper::Decorator
  delegate_all
  decorates_association :books

  def number_of_books
    object.books.count
  end
end
