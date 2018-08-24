class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:mood].present? && params[:interest].present?
      @artworks = Artwork.search_by_mood(params[:mood]).search_by_interest(params[:interest])
      redirect(@artworks)
    elsif params[:interest].present? && params[:mood] == ""
      @artworks = Artwork.search_by_interest(params[:interest])
      redirect(@artworks)
    elsif params[:mood].present? && params[:interest] == ""
      @artworks = Artwork.search_by_mood(params[:mood])
      redirect(@artworks)
    elsif params[:mood] == "" && params[:interest] == ""
      @artworks = Artwork.all
      redirect(@artworks)
    end
    authorize @artworks
  end

  def show
    @artwork = Artwork.find(params[:id])
    authorize @artwork
  end

    private

    def redirect(artworks)
      index = params[:next_index].to_i || 0
      if index < @artworks.length
        @artwork = @artworks[index]
        index = index + 1
        redirect_to artwork_path(@artwork.id, mood: params[:mood], interest: params[:interest], next_index: index)
      else
        redirect_to no_matches_url
      end
    end
end
