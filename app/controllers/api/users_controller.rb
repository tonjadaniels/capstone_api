class Api::UsersController < ApplicationController

  # def index
  #   @users = User.all
  #   render "index.json.jbuilder"
  # end

  def show
    @user = User.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @user = User.new(
    email: params[:email],
    password: params[:password],
    password_confirmation: params[:password_confirmation]
    )
    if @user.save
      render "show.json.jbuilder"
    else
      render json: {errors: @user.errors.full_messages}, status: :unprocessable_entity
    end
  end

# def destroy
#   user_id = params[:id]
#   @user = User.find(user_id)
#   @user.destroy
#   render json: {"User successfully deleted"}
# end

end