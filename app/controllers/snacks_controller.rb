class SnacksController < ApplicationController
    before_action :is_admin?, only: [:index, :show, :edit]
    before_action :find_snack, only: [:show, :edit, :update, :destroy] 
    
    def index
        @snack = Snack.all
    end

    def new
        @snack = Snack.new
    end

    def show
    end

    def create
        @snack = Snack.create(snack_params)
        redirect_to snack_path(@snack)
    end

    def edit
        
    end

    def update
        @snack = Snack.update(snack_params)
        redirect_to snack_path(@snack)
    end

    def destroy
        Snack.destroy(@snack.id)
        redirect_to snacks_path
    end

    private

    def find_snack
        @snack = Snack.find(params[:id])
    end

    def snack_params
        params.require(:snack).permit(:name, :calories, :protein, :fat, :carbs)
    end
end
