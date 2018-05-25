class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
    @genres = Genre.joins(:books).merge(Book.where(author: @author)).select(:id, :name).distinct

    @rating = Rating.new(author_id: params[:id])
  end
end
