class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end
  def create
    @category = Category.new(category_params)
    @category.save
    redirect_to action: :show, id: @category.id
  end
  private
    def category_params
      params.require(:category).permit(:name)
    end
  def new
  end
  def show
    @category = Category.find(params[:id])
  end
  def delete
  end
end
