class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def create
    user = User.new(username: params[:username], password_digest: params[:password])
    if user.valid?
      user.save
      render json: user
    else
      render json: {error: 'user could not be created'}
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
