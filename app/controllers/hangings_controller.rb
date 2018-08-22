class HangingsController < ApplicationController

  def create
    @user = current_user
    @artwork = Artwork.find(params[:artwork_id])
    @hanging = Hanging.new(user: @user, artwork: @artwork, left: 0, top: 0)
    authorize @hanging
    @hanging.save
    redirect_to user_path(@user)
  end

  def update
    @hanging = Hanging.find(params[:id])
    p @hanging
    head :ok
  end

  private

  def hanging_params
    params.require(:hanging).permit(:id, :top, :left)
  end

end
