class AuthorsController < ApplicationController
  # before_action :authenticate_admin!, only: [:new, :create, :update]

  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end

  # def new
  #   @author = Author.new
  # end

  # def edit
  #   @author = Author.find(params[:id])
  # end

  # def create
  #   @author = Author.create(params[:author])
  #   if @author.save
  #     redirect_to 'index'
  #   else
  #     render 'new'
  #   end
  # end

  # def update

  # end

  # def destroy
  #   @author = Author.find(params[:id])
  #   @author.destroy

  #   redirect_to 'index'
  # end
end
