class MuseumsController < ApplicationController
  before_action :require_logged_in
  include MuseumsHelper
  include ExhibitsHelper

  # most_exhibits scope iterates through all museums. Then top museum instance variable gets the musueum with most exhibits.
  def index
    @museums = Museum.all
    most_exhibits = Museum.most_exhibits
    most_exhibits.each do |museum|
     @top_museum = MuseumsHelper.get_museum_name(museum.museum_id)[0]
    end

  end

  def show
    @museum = Museum.find_by_id(params[:id])
    @count_exhibits = MuseumsHelper.count_exhibits(params[:id])
    @exhibits =  ExhibitsHelper.get_exhibits(params[:id])
  end

end
