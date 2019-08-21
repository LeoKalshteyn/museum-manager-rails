class ExhibitsController < ApplicationController

  def new
    @exhibit = Exhibit.new
  end

  def create
    @exhibit = Exhibit.new(exhibit_params)
    if @exhibit.save
      redirect_to exhibits_path
    else
      render :new
    end
  end

  def index
    @exhibits = exhibit.all
  end

  private

  def exhibit_params
    params.require(:exhibit).permit(:name)
  end

end
