class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]



  def show
    if params[:mood].present? && params[:interest].present?
      @artworks = Artwork.search_by_mood(params[:mood]).search_by_interest(params[:interest])
      authorize @artworks
    elsif params[:interest].present? && params[:mood] == ""
      @artworks = Artwork.search_by_interest(params[:interest])
      authorize @artworks
    elsif params[:mood].present? && params[:interest] == ""
      @artworks = Artwork.search_by_mood(params[:mood])
      authorize @artworks
    elsif params[:mood] == "" && params[:interest] == ""
      @artworks = Artwork.all
        authorize @artworks
    else
      #This is a regular show page we want the user to see, after the search
      @artwork = Artwork.find(params[:id])
      authorize @artwork
      if current_user.present?
        @user = current_user
        authorize @user
      end
    end
  end
end
