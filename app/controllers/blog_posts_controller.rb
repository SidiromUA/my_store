class BlogPostsController < ApplicationController
  private

  def blog_post_params
    params.require(:blog_post).permit(:title, :body)
  end
end
