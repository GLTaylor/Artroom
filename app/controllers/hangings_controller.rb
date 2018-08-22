class HangingsController < ApplicationController

  def create
    @user = current_user
    @artwork = Artwork.find(params[:artwork_id])
    @hanging = Hanging.new(user: @user, artwork: @artwork, left: 0, top: 0)
    authorize @hanging
    @hanging.save
    redirect_to user_path(@user)
  end

end
