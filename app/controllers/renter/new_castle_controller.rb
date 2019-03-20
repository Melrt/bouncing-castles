class Renter::NewCastleController < ApplicationController
  def new
    @current_user = current_user
    @user_castles = new
  end
end
