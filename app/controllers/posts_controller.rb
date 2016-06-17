class PostsController < ApplicationController
  def index
    @posts = Post.all
    @post = Post.new
  end

  def create
    respond_to do |format|
      @post = Post.new(post_params)
      @post.save
      format.js
    end
  end

  private

  def post_params
    params.require(:post).permit(:body, :title)
  end
end