class GenresController < ApplicationController

  def index
    @genres = Genre.all.decorate
  end

  def books
    @genre = Genre.find(params[:id]).decorate
  end
end
