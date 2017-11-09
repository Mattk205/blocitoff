class UserController < ApplicationController
  def show
    if user_signed_in?
      @user = current_user
    else
      render :template => "welcome/index"
    end
  end
end
