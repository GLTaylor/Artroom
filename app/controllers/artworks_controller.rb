class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]
  def show
    @artwork = Artwork.find(params[:id])
    authorize @artwork
    if current_user.present?
      @user = current_user
      authorize @user
    end
  end
end
