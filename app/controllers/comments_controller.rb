class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    params_with_user_id = comment_params.merge(user_id: current_user.id)

    @comment = Comment.new(params_with_user_id)

    if @comment.save
      redirect_to book_path(comment_params[:book_id])
    else
      redirect_to book_path(params[:book_id]), alert: "Comment can't be empty"
    end
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
