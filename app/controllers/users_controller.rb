class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    get_instance
  end

  def create
    @user = User.new(strong_params)
    if @user.valid?
      @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  def edit
    get_instance
  end

  def update
    get_instance
    @user.update(strong_params)
    redirect_to user_path
  end

  def destroy
    User.destroy(params[:id])
    redirect_to users_path
  end

  private

  def get_instance
    @user = User.find(params[:id])
  end

  def strong_params
    params.require(:user).permit(:username, :password, :name, :age, :height, :weight, :bio)
  end

end
