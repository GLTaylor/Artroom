class ArtistsController < ApplicationController
skip_before_action :authenticate_user!, only: [:show]
skip_after_action :verify_authorized, only: [:show]

  def show
    @artist = Artist.find(params[:id])
    authorize @artist
    @user = current_user
  end
end
