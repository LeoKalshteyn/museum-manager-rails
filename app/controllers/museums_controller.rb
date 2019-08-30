class MuseumsController < ApplicationController
  before_action :require_logged_in
  include MuseumsHelper
  include ExhibitsHelper

  def index
    @museums = Museum.all
  end

  def show
    @museum = Museum.find_by_id(params[:id])
    @count_exhibits = MuseumsHelper.count_exhibits(params[:id])
    @exhibits =  ExhibitsHelper.get_exhibits(params[:id])
  end

end
