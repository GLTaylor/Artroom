class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]



  def show
    if params[:query].present?
      sql_query = "\
        artwork.mood @@ :query \
        AND artwork.interest @@ :query \
      "
      @artwork = Artwork.find_by(sql_query, query: "%#{params[:query]}%")
      authorize @artwork
    else
      # This is a regular show page we want the user to see, after the search
      @artwork = Artwork.find(params[:id])
      authorize @artwork
      if current_user.present?
        @user = current_user
        authorize @user
      end
    end
  end
end
