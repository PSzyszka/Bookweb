class RatingsController < ApplicationController

  def index
    @ratings = Rating.where(author_id: params[:author_id])
    @author = Author.where("id = ?", params[:author_id]).first
  end

  def create
    @rating = Rating.new(rating_params)
    if @rating.save
      redirect_to author_path(rating_params[:author_id])
    else
      redirect_to author_path(rating_params[:author_id])
    end
  end

  private
  def rating_params
    params.require(:rating).permit(:vote, :author_id)
  end
end
