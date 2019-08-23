class CategoriesController < ApplicationController
  before_action :require_logged_in

  def index
    @categories = Category.all
  end

  def show
    @categories = Category.find_by_id(params[:id])
  end

end
