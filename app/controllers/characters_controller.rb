class CharactersController < ApplicationController

  def index
    @character = Character.all
  end

  def show
    @house = House.find(params[:house_id])
    @character = @house.characters.find(params[:id])
  end

  def edit
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
    @character.house_id = params[:house_id] if(params[:house_id])
  end

  def create
    @house = House.find(params[:house_id]) if(params[:house_id])
    @house = House.find(params[:character][:house_id]) if(params[:character][:house_id])
    @character = @house.characters.create(character_params)
    redirect_to house_path(@house)
  end
  def update
    @character = Character.find(params[:id])
    @character.update(character_params)
    @character = Character.find(params[:id])

    redirect_to house_character_path(@character.house, @character)
  end

  private
  def character_params
    params.require(:character).permit(:name, :title, :img_url, :weapon)
  end
end
