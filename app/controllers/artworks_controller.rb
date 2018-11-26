class ArtworksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:interest].present?
      if params[:mood].present?
        @artworks = Artwork.search_by_mood(params[:mood]).search_by_interest(params[:interest])
      else
        @artworks = Artwork.search_by_interest(params[:interest])
      end
    else # no interest param given
      if params[:mood].present?
        @artworks = Artwork.search_by_mood(params[:mood])
      else
        @artworks = Artwork.all
      end
    end

    authorize @artworks

    respond_to do |format|
      format.html { redirect @artworks }
      format.json do
        render json: @artworks.to_json(
          only: [:title, :artist, :mood, :interest, :image ],
          include: { artist: { only: [:name] } }
          )
      end
    end
  end

  def show
    @artwork = Artwork.find(params[:id])
    authorize @artwork
  end

    private

    def redirect(artworks)
      # set array artworks.length - 1
      # take random index like below
      # remove current index from the array
      # sample array again on the shorter array until it's empty
      # if / when array is empty, redirect to no matches
      if !params[:art_array].nil?

        art_array = params[:art_array]

        if art_array == "end"
          redirect_to no_matches_url
        elsif !art_array.blank?
          index = art_array.sample
          @artwork = artworks[index.to_i]
          art_array.delete(index)

          if art_array.empty?
            art_array = "end"
          end
          redirect_to artwork_path(@artwork, mood: params[:mood], interest: params[:interest], index: index, art_array: art_array)

        end
      else
        range = (0...artworks.length)
        art_array = range.to_a
        if art_array.any?
          index = art_array.sample
          @artwork = artworks[index.to_i]
          art_array.delete(index)

          if art_array.empty?
            art_array = "end"
          end
          redirect_to artwork_path(@artwork, mood: params[:mood], interest: params[:interest], index: index, art_array: art_array)
        else
          redirect_to no_matches_url
        end
      end
    end
end
