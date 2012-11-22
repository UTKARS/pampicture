class CategoriesController < ApplicationController
  # GET /categories
  # GET /categories.json
  def index
    @category = Category.find(params[:id])
    @products = @category.products
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @categories }
    end
  end

end
