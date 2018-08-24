class ArtistsController < ApplicationController

  def show
    @artist = Artist.find(params[:id])
    authorize @artist
    @user = current_user
  end
end
