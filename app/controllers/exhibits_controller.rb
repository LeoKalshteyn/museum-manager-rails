class ExhibitsController < ApplicationController
  before_action :require_logged_in

  def new
    @exhibit = Exhibit.new
  end

  def create
    @exhibit = Exhibit.new(exhibit_params)
    if @exhibit.save
      redirect_to exhibits_path
    if current_user
      @user = current_user
      @exhibit = @user.exhibits.build(exhibit_params)
        if @exhibit.save
          redirect_to @exhibit
        end
    else
      render :new
      redirect :new
    end
  end

  def index
    @exhibits = exhibit.all
    if params[:user_id]
      @exhibits = User.find(params[:user_id]).exhibits
    elsif params[:category_id]
        @exhibits = Category.find(params[:category_id]).exhibits
    else
      @exhibits = Exhibit.all
    end
  end

  def show
    @exhibits = Exhibit.find_by_id(params[:id])
  end

  private

  def exhibit_params
    params.require(:exhibit).permit(:user_id, :category_id, :name, :origin, :age)
  end

  def set_exhibit
    @exhibit = Exhibit.find_by_id(params[:id])
    if !@exhibit
      redirect_to exhibits_path
    end
  end
end
