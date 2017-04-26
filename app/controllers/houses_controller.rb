class HousesController < ApplicationController

  #index
  def index
    @houses = House.all
  end
  #show
  def show
    @house = House.find(params[:id])
    @character = Character.new
  end
  # new
  def new
    @house = House.new
  end
  # edit
  def edit
    @house = House.find(params[:id])
  end
  # create
  def create
    @house = House.create!(house_params)
    redirect_to house_path(@house), notice: "house added!"
  end
  # update
  def update
    @house = House.find(params[:id])
    @house.update(house_params)

    redirect_to house_path(@house)
  end
  # destroy
  def destroy
    @house = House.find(params[:id])
    @house.destroy

    redirect_to houses_path
  end

  private
  def house_params
    params.require(:house).permit(:name, :img_url, :motto)
  end
end
