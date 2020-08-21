class ArtistsController < ApplicationController

  def search
    @artists = Artist.where('lower(name) LIKE lower(?)', "%#{ params[:search_string] }%")
    render json: @artists
  end


  private
  def artist_params
    params.permit(:id, :title, :description, :search_string)
  end
end
