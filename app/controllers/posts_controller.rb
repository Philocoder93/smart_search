class PostsController < ApplicationController
  def index

  end

  def create
    @new_post = Post.create!(post_params.merge(user_id: params[:user_id]))

  end

  def new
    @new_post = Post.new
  end

  def edit
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
  def post_params
      params.require(:post).permit(:title, :text)
  end

end
