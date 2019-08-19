class IngredientsController < ApplicationController
  before_action :find_ingredient, only: [:show, :edit, :update]

  def index
    @ingredients = Ingredient.all
  end

  def new
  end

  def show
  end

  def edit
  end

  private

  def find_ingredient
    @ingredient = Ingredient.find(params[:id])
  end


end
