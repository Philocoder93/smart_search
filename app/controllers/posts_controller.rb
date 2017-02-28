class PostsController < ApplicationController
  before_filter :security

  def security
    unless user_signed_in?
      flash[:alert] = "You must be logged in to access this section"
      redirect_to root_path
    end
  end

  def index

  end

  def create
    @new_post = Post.create!(post_params.merge(user_id: params[:user_id]))
    redirect_to user_posts_path(current_user)
  end

  def new
    @new_post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to user_posts_path(current_user)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to user_posts_path(current_user)
  end

  private
  def post_params
      params.require(:post).permit(:title, :text)
  end

end
