class UsersController < ApplicationController
  def show
    if user_signed_in?
      @user = current_user
      @items = Item.where(:user => @user)
    else
      render :template => "welcome/index"
    end
  end
end
