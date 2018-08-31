class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :no_matches, :about]

  def home
  end

  def no_matches
  end

  def about
  end
end
