class SneakersController < ApplicationController

  def index
    @sneakers = Sneaker.all
  end

  def new
    @sneaker= Sneaker.new
    @brands = Brand.all
  end

  def show
    @sneaker = Sneaker.find(params[:id])
  end

  def create
    sneaker = Sneaker.create(sneaker_params)
    if sneaker.valid?
      redirect_to '/sneakers'
    else
      flash[:sneaker_error] = sneaker.errors.full_messages
    end
  end

  def edit
    @sneaker = Sneaker.find(params[:id])
  end

  def update
    @sneaker = Sneaker.find(params[:id])
    @sneaker.update(sneaker_params)
    redirect_to sneaker_path(@sneaker)
  end

  def destroy
    @sneaker = Sneaker.find(params[:id])
    @sneaker.destroy
    redirect_to sneakers_path, notice: "Sneaker has been deleted."
  end



  private

  def sneaker_params
    params.require(:sneaker).permit(:style, :title, :color, :sneaker_img, :brand_id)
  end


end
