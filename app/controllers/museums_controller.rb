class MuseumsController < ApplicationController
  before_action :require_logged_in

  def index
    @museums = Museum.all
  end

  def show
    @museums = Museum.find_by_id(params[:id])
  end

end
