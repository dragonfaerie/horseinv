class HorsesController < ApplicationController

  def index
    @horses = Horse.all
  end

  def show
    @horse = Horse.find(params[:id])
    @make = Manufacturer.find_by(id: @horse.make)
    @breed = Breed.find_by(id: @horse.breed)
    @mold = Mold.find_by(id: @horse.mold)
  end

  def new
    @horse = Horse.new
  end

  def create
    @horse = Horse.new(horse_params)
    @horse.user_id = current_user

    if @horse.save
      redirect_to @horse, notice: "Horse successfully created"
    else
      render :new
    end
  end

  def update
    @horse = Horse.find(params[:id])
    @horse.update(horse_params)
    redirect_to @horse
  end

  def edit
    @horse = Horse.find(params[:id])
  end

  # TODO:destroy horse
  def horse_params
    params.require(:horse).permit!
  end
end
