class SedentaryActivitiesController < ApplicationController
  before_action :is_admin?, only: [:index, :show, :edit]

  def index
    @sedentaryactivities = SedentaryActivity.all
  end

  def new
    @sedentaryactivity = SedentaryActivity.new
  end

  def show
    get_instance
  end

  def create
    @sedentaryactivity = SedentaryActivity.new(strong_params)
    if @sedentaryactivity.save
      @day = current_user.get_current_date
      redirect_to add_sedentary_activity_path(current_user, day: @day.id)
    else
      render :new
    end
  end

  def edit
    get_instance
  end

  def update
    get_instance
    @sedentaryactivity.update(strong_params)
    redirect_to sedentary_activity_path
  end

  def destroy
    SedentaryActivity.destroy(params[:id])
    redirect_to sedentaryactivities_path
  end

  private

  def get_instance
    @sedentaryactivity = SedentaryActivity.find(params[:id])
  end

  def strong_params
  params.require(:sedentary_activity).permit(:name, :calories, :duration, :start_time)
  end

end
