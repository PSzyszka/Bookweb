module Admin
  class PublishersController < Admin::ApplicationController

    def new
      @publisher = Publisher.new
    end

    def edit
      @publisher = Publisher.find(params[:id])
    end

    def create
      @publisher = Publisher.new

      if @publisher.save
        redirect_to :index
      else
        render 'new'
      end
    end

    def update
      @publisher = Publisher.find(params[:id])

      if @publisher.update(publisher_params)
        redirect_to @publisher
      else
        render 'edit'
      end
    end

    def destroy
      @publisher = Publisher.find(params[:id])
      @publisher.destroy

      redirect_to publishers_path
    end

    private
    def publisher_params
      params.require(:publisher).permit(:name, :city, :count_of_published_books)
    end
  end
end
