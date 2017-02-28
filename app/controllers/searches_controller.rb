class SearchesController < ApplicationController
  before_filter :security

  def security
    unless user_signed_in?
      flash[:alert] = "You must be logged in to access this section"
      redirect_to root_path
    end
  end

  def index
    @searches = current_user.searches
  end

  def create
    @search = Search.create!(search_params.merge(user_id: params[:user_id]))
    @user = User.find(params[:user_id])
    @user.posts.each do |post|
      number = 0
      if post.text.include? @search.search_terms
        @text = post.text.split(" ")
        @text.each do |word|
          if word.include? @search.search_terms
            number += 1
          end
        end
        Result.create(user_id: params[:user_id], search_id: @search.id, post_id: post.id, score: number.to_f )
      end
    end
    redirect_to user_search_path(current_user, @search)
  end

  def new
    @new_search = Search.new
  end

  def edit
  end

  def show
    @search = Search.find(params[:id])
  end

  def delete_all
    current_user.searches.destroy_all
    flash[:alert] = "Don't worry, your secret is safe with us."
    redirect_to root_path
  end

  private
  def search_params
      params.require(:search).permit(:search_terms)
  end
end
