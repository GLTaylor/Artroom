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
      p = Random.new
      if params[:next_index].present?
        start = false
        index = params[:next_index].to_i
        index_start = params[:index_start]
      else
        start = true
        index = p.rand(artworks.length)
        index_start = index
      end
      if index < (artworks.length - 1)
        @artwork = artworks[index]
        index = index + 1
        if params[:next_index] == index_start #bc the next index will never = 0
          redirect_to no_matches_url
        else
          redirect_to artwork_path(@artwork, mood: params[:mood], interest: params[:interest], next_index: index, index_start: index_start)
        end
      elsif index == (artworks.length - 1)
        @artwork = artworks[index]
        index = 0
        if params[:next_index] == index_start #bc the next index will never = 0
          redirect_to no_matches_url
        else
         redirect_to artwork_path(@artwork, mood: params[:mood], interest: params[:interest], next_index: index, index_start: index_start)
        end
      end
    end
end
