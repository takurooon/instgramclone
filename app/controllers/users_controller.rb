class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def new
    @user = User.new
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    @favorites_pictures = @user.favorite_pictures
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    if @user.save
    redirect_to user_path(@user.id)
    else
    render 'new'
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
