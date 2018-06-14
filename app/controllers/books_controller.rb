class BooksController < ApplicationController
  layout "books", only: [:index]

  def index
    @books = Book.includes(:genre, :author, :publisher).search(search_params).page params[:page]

    respond_to do |format|
      format.html
      format.json { render json: Book.search(params[:book_title]) }
    end
  end

  def show
    @book = Book.find(params[:id])
    @rating = Rating.new(book_id: params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)
    if @book.save
      redirect_to book_path(@book.id)
    else
      render 'new', alert: "Something went wrong..."
    end
  end

  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      redirect_to books_path
    else
      render 'edit', alert: "Something went wrong..."
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  def lists
    @books = Book.includes(:genre, :author, :publisher).all
  end

  def policy_terms
    @book = Book.find(params[:id])
  end

  private

  def search_params
    params.permit(:search)
  end

  def book_params
    params.require(:book).permit(
      :title,
      :description,
      :year_of_release,
      :original_language,
      :number_of_pages,
      :translated_into,
      :genre_id,
      :author_id,
      :publisher_id
    )
  end
end
