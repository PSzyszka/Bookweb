class BooksController < ApplicationController

  def index
    @books = Book.includes(:genre, :author, :publisher).search(search_params)
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to :index
    else
      redirect_to new_book_path
    end
  end

  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      redirect_to @book
    else
      render 'edit'
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :description, :rating, :year_of_release, genre_attributes: [:name], author_attributes: [:first_name, :last_name])
  end

  def search_params
    params.permit(:search)
  end
end
