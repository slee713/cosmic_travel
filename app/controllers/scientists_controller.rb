class ScientistsController < ApplicationController

    before_action :find_scientist, only: [:show, :edit, :update]
    
    def index
        @scientists = Scientist.all
    end

    def show
    end

    def new
        @scientist = Scientist.new
    end

    def create
        @scientist = Scientist.new(scientist_params)
        if @scientist.valid?
            @scientist.save
            redirect_to scientist_path(@scientist)
        else
            render :new
        end
    end

    def edit
    end

    def update
        @scientist.update(scientist_params)
        if @scientist.valid?
            redirect_to scientist_path(@scientist)
        else
            render :edit
        end
    end

    def destroy
        Scientist.destroy(params[:id])

        redirect_to scientists_path
    end

    private
    
    def find_scientist
        @scientist=Scientist.find(params[:id])
    end

    def scientist_params
        params.require(:scientist).permit(:name, :field_of_study)
    end

end
