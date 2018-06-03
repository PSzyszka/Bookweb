class RatingsController < ApplicationController
  def index
    if params[:book_id].blank? && params[:author_id]
      @ratings = Rating.where(author_id: params[:author_id])
      @author = Author.where("id = ?", params[:author_id]).first
    else
      @ratings = Rating.where(book_id: params[:book_id])
      @book = Book.where("id = ?", params[:book_id]).first
    end
  end

  def create
    @rating = Rating.new(rating_params)
    if @rating.save
      if rating_params[:author_id].blank? && rating_params[:book_id]
        redirect_to book_path(rating_params[:book_id])
      elsif rating_params[:book_id].blank? && rating_params[:author_id]
        redirect_to author_path(rating_params[:author_id])
      else
        redirect_to books_path
        flash[:notice] = "Something went wrong..."
      end
    else
      redirect_to books_path
      flash[:notice] = "Something went wrong..."
    end
  end

  private

  def rating_params
    params.require(:rating).permit(:vote, :author_id, :book_id)
  end
end
