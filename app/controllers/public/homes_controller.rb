class Public::HomesController < ApplicationController

  def top
    @films = Film.all
    @users = User.all
  end

  def about

  end


end
