class MuseumsController < ApplicationController
  before_action :require_logged_in
  include MuseumsHelper
  include ExhibitsHelper

  def new
    @museum = Museum.new
  end

  def create
    @museum = current_user.museums.build(museum_params)
    if @museum.save
      redirect_to @museum
    else
      render :new
    end
  end

  # most_museums scope iterates through all museums. Then top museum instance variable gets the musueum with most museums.
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


  private

  def museum_params
    params.require(:museum).permit(:city, :country, :museum_name, :origin, :age, :material, :culture, :museum_type, :open_date, :close_date, :transit_status_id, :description)
  end

end
