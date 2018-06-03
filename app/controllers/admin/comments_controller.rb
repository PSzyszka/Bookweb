module Admin
  class CommentsController < Admin::ApplicationController

    def create
      params_with_user_id = comment_params.merge(user_id: current_user.id)
    end

    def destroy
      @comment = Comment.find(params_with_user_id)
      @comment.destroy

      redirect_to book_path(params[:book_id])
    end

    private

    def comment_params
      params.require(:comment).permit(:description, :book_id)
    end
  end
end
