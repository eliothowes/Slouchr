class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
  end

  def new
    @exercise = Exercise.new
  end

  def show
    get_instance
  end

  def create
    @exercise = Exercise.new(strong_params)
    if @exercise.save
      redirect_to exercises_path
    else
      render :new
    end
  end

  def edit
    get_instance
  end

  def update
    get_instance
    @exercise.update(strong_params)
    redirect_to exercise_path
  end

  def destroy
    Exercise.destroy(params[:id])
    redirect_to exercises_path
  end

  private

  def get_instance
    @exercise = Exercise.find(params[:id])
  end

  def strong_params
    params.require(:exercise).permit(:name, :calories, :duration, :start_time)
  end
end
