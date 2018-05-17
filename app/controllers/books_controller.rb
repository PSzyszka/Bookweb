class BooksController < ApplicationController
  layout "books", only: [:index]

  def index
    @books = Book.includes(:genre, :author, :publisher).search(search_params)
  end

  def show
    @book = Book.find(params[:id])
  end

  private
  def search_params
    params.permit(:search)
  end
end
