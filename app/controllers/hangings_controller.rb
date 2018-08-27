class HangingsController < ApplicationController
  # skip_before_action :verify_authenticity_token, only: [:update]

  before_action :set_user, only: [:create, :destroy]

  def create
    @artwork = Artwork.find(params[:artwork_id])
    @hanging = Hanging.new(user: @user, artwork: @artwork, left: 0, top: 0, width: 20)
    authorize @hanging
    @hanging.save
    redirect_to user_path(@user)
  end

  def update
    p params
    @hanging = Hanging.find(params[:query][:id])
    authorize @hanging
    @hanging.top += params[:query][:top]
    @hanging.left += params[:query][:left]
    @hanging.width = params[:query][:width]
    @hanging.save
    head :ok
  end

  def destroy
    @hanging = Hanging.find(params[:id])
    authorize @hanging
    @hanging.delete
    redirect_to user_path(@user)
  end

  private

  def set_user
    @user = current_user
  end

  def hanging_params
    params.require(:hanging).permit(:id, :top, :left, :width)
  end

end
