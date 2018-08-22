class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]



  def show
    # if params[:query].present?

    # end
    # else
      # This is a regular show page we want the user to see, after the search
      @artwork = Artwork.find(params[:id])
      authorize @artwork
      if current_user.present?
        @user = current_user
        authorize @user
      end
  end
end
