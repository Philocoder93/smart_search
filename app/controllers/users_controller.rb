class UsersController < ApplicationController
  def start
    if current_user
      redirect_to new_user_search_path(current_user)
    end
  end

  def index
  end

  def create
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end
end
