module Admin
  class BooksController < Admin::ApplicationController

    def new
      @book = Book.new
    end

    def edit
      @book = Book.find(params[:id])
    end

    def create
      @book = Book.new(book_params)

      if @book.save
        redirect_to book_path(@book)
      else
        render 'new'
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

    def destroy
      @book = Book.find(params[:id])
      @book.destroy

      redirect_to books_path
    end

    private
    def book_params
      params.require(:book).permit(
        :title,
        :description,
        :rating, :year_of_release,
        :original_language,
        :number_of_pages,
        :translated_into,
        genre_attributes: [:name],
        author_attributes: [:first_name, :last_name]
      )
    end
  end
end
