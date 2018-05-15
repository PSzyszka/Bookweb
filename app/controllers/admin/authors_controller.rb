module Admin
  class AuthorsController < Admin::ApplicationController

    def new
      @author = Author.new
    end

    def edit
      @author = Author.find(params[:id])
    end

    def create
      @author = Author.create(params[:author])
      if @author.save
        redirect_to authors_path
      else
        render 'new'
      end
    end

    def update
      @author = Author.find(params[:id])

      if @author.update(params[:author])
        redirect_to @author
      else
        render 'edit'
      end
    end

    def destroy
      @author = Author.find(params[:id])
      @author.destroy

      redirect_to authors_path
    end
  end
end
