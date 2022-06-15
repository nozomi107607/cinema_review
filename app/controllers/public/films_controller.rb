class Public::FilmsController < ApplicationController

  def new
    @film = Film.new
  end

  def create
    @film = Film.new(film.params)
    @film.user_id = current_user.id
    @film.save
    redirect_to
  end

end
