class BrandsController < ApplicationController

  def index
    @brands = Brand.all
  end

  def new
    @brand = Brand.new
  end

  def show
    @brand = Brand.find(params[:id])
  end

end
