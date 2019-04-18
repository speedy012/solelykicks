class LikesController < ApplicationController

  def create
    like = Like.create(user_id: session[:user_id], sneaker_id: params[:sneaker_id])
    if like.valid?
      flash[:message] = "added to your favorites"
      redirect_to brand_path(like.brand)
    else
      flash[:message] = "already in your list"
      redirect_to brand_path(like.brand)
    end
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    redirect_to user_path(session[:user_id]), notice: "Deleted Favorite"
  end


end
