class MoldsController < ApplicationController
    def index
        @molds = Mold.all
    end

    def new
        @mold = Mold.new
    end

    def create
        @mold = Mold.new(mold_params)
    
        if @mold.save
          redirect_to @mold, notice: "Mold successfully created"
        else
          render :new
        end
    end

    def show
        @mold = Mold.find(params[:id])
    end

    def update
      @mold = Mold.find(params[:id])
      @mold.update(mold_params)
      redirect_to @mold
    end
  
    def edit
      @mold = Mold.find(params[:id])
    end

    def mold_params
        params.require(:mold).permit!
    end
end
