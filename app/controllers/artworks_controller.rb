class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  def show
    @artwork = Artwork.find(params[:id])
    @user = current_user
    authorize @artwork, @user
  end
end
