class FavoritesController < ApplicationController

  def create
    favorite = current_user.favorites.create(slogan_id: params[:slogan_id])
    redirect_to slogans_url, notice: "お気に入り登録しました"
  end

  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to slogans_url, notice: "お気に入り解除しました"
  end

end