class ExhibitsController < ApplicationController
  before_action :require_logged_in

  def new
    @exhibit = Exhibit.new
  end

  def create
    if current_user
      @user = current_user
      @exhibit = @user.exhibits.build(exhibit_params)
        if @exhibit.save
          redirect_to @exhibit
        end
    else
      redirect :new
    end
  end

  def index
    if params[:user_id]
      @exhibits = User.find(params[:user_id]).exhibits
    elsif params[:category_id]
        @exhibits = Category.find(params[:category_id]).exhibits
    else
      @exhibits = Category.all
    end
  end

  def show
    @exhibits = Exhibit.find_by_id(params[:id])
  end

  def edit
  selected_exhibit
  @category = Category.find_by(id: params[:category_id])
    if @exhibit.user_id != current_user.id
      redirect_to categories_path
    end
  end

  def update
    exhibit = Exhibit.find(params[:id])
    exhibit.update(exhibit_params)
    redirect_to exhibit
  end

  def destroy
    selected_exhibit
    @exhibit.destroy
    redirect_to exhibits_path
  end

  private

  def exhibit_params
    params.require(:exhibit).permit(:user_id, :category_id, :name, :origin, :age)
  end

  def selected_exhibit
    @exhibit = Exhibit.find_by_id(params[:id])
    if !@exhibit
      redirect_to exhibits_path
    end
  end

end
