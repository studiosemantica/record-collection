class ArtistsController < ApplicationController


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

end
