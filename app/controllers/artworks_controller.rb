class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show]

  def show
    if params[:mood].present? && params[:interest].present?
      @artworks = Artwork.search_by_mood(params[:mood]).search_by_interest(params[:interest])
      sample_authorize
    elsif params[:interest].present? && params[:mood] == ""
      @artworks = Artwork.search_by_interest(params[:interest])
      sample_authorize
    elsif params[:mood].present? && params[:interest] == ""
      @artworks = Artwork.search_by_mood(params[:mood])
      sample_authorize
    elsif params[:mood] == "" && params[:interest] == ""
      @artworks = Artwork.all
      sample_authorize
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

  private

    def sample_authorize
      @artwork = @artworks.sample
      authorize @artworks
    end
end
