class UserController < ApplicationController

after_create :welcome_email

  def show
    @user = User.find(current_user.id)
  end


end
