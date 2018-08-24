class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :no_matches]

  def home
  end

  def no_matches
  end
end
