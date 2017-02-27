class SearchesController < ApplicationController
  def index
  end

  def create
    @search = Search.create!(search_params.merge(user_id: params[:user_id]))
    @user = User.find(params[:user_id])
    @user.posts.each do |post|
      if post.text.include? @search.search_terms
        Result.create(user_id: params[:user_id],search_id: @search.id,post_id: post.id)
      end
    end
    
  end

  def new
    @new_search = Search.new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
  def search_params
      params.require(:search).permit(:search_terms)
  end
end
