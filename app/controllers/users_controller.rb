class UsersController < ApplicationController
  before_action :is_admin?, only: [:index]
  before_action :is_current_user_here?, only: [:show]
  skip_before_action :require_login, only: [:new, :create]

  def is_current_user_here?
    # helper method for users veiewing other users views
    # Ideally want to redirect to current_users show path
    unless current_user.id == params[:id].to_i
      redirect_to dashboard_path
    end
  end

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
      redirect_to new_session_path
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
