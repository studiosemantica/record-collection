class ArtistsController < ApplicationController


  def search
    @artists = Artist.where('lower(name) LIKE lower(?)', "%#{ params[:search_string] }%")
    render json: @artists
  end

  
  def show
    @single_artist = Artist.exists?(params[:id])

    #if artist exists:
    if @single_artist
      render :json => {
          :response => 'successfully found the artist',
          :data => Artist.find(params[:id])
      }
    else
      render :json =>{
          :response => artist
      }
    end
  end
  
  
  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      render json: @artist
    else
      render json: { error: "Unable to create artist." }
    end

  end


  private

  def artist_params
    params.require(:artist).permit(:name,:hot_100_hits, :id, :title, :description, :search_string)
  end

end
