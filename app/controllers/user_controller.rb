class UserController < ApplicationController


  def index
    @users = User.all

  end


  def new
    @user = User.new
  end

  def create
    @user = User.new(params[])
  end

  def show

  end

  def edit

  end

  def delete

  end



  @user = User.create(params[])

end
