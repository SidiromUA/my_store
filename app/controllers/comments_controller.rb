class CommentsController < ApplicationController
  private

  def comment_params
    params.require(:comment).permit(:body, :user_id, :commentable_id, :commentable_type)
  end
end
