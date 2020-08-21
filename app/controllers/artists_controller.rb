class ArtistsController < ApplicationController
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
    params.require(:artist).permit(:name,:hot_100_hits)
  end
end
