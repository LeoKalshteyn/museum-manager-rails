class MuseumsController < ApplicationController
  before_action :require_logged_in
  include MuseumsHelper

  def index
    @museums = Museum.all
  end

  def show
    @museum = Museum.find_by_id(params[:id])
    @count_exhibits = MuseumsHelper.count_exhibits(params[:id])
    @exhibits =  Exhibit.where(museum_id: params[:id])
  end

end
