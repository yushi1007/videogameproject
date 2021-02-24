class VideogamesController < ApplicationController
  def index
    @videogames = Videogame.all
  end

  def new
    @videogame = Videogame.new
  end

  def create
    videogame_params = params.require(:videogame).permit(:name, :year, :description)
    new_videogame = Videogame.create(videogame_params)
    redirect_to videogame_path(new_videogame)
  end

  def show
    @videogame = Videogame.find(params[:id])
  end

  def edit 
    @videogame = Videogame.find(params[:id])
  end

  def update
    @videogame = Videogame.find(params[:id])
        videogame_params = params.require(:videogame).permit(:name, :year, :description)
        @videogame.update(videogame_params)
        redirect_to videogame_path(@videogame)
  end

  def destroy
    @videogame = Videogame.find(params[:id])
    Videogame.destroy(params[:id])
    redirect_to videogames_path
  end
end
