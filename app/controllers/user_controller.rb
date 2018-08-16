class UserController < ApplicationController

  def new
  end

  def create
    @user = User.new
    @user.email
    @user.password
    @user.password_confirmation
  end
end
