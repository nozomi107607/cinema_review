class Admin::FilmsController < ApplicationController

  def show
    @film = Film.find(params[:id])
  end

  def destroy
    @film = Film.find(params[:id])
    @film.destroy
    redirect_to admin_user_path(@user.id)
  end
end
