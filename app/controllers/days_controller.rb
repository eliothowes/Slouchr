class DaysController < ApplicationController
  before_action :find_day, only: [:show, :edit, :update] 

  def index
    @days = current_user.days
  end

  def new
    @day = Day.new
  end

  def show
  end

  def edit
  end

  def update
  end

  private

  def find_day
    @day = Day.find(params[:id])
  end
end
