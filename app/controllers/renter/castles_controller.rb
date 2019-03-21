class Renter::CastlesController < ApplicationController
  def new
    @current_user = current_user
    @new_castle = Castle.new
  end

  def create
    @new_castle = Castle.new(new_castle_params)
    @new_castle.renter = current_user
    if @new_castle.save!
      redirect_to renter_dashboard_path
    else
      render :new
    end
  end

  private

  def new_castle_params
    params.require(:castle).permit(:name, :available, :nb_players, :description, :day_price, :address, :photo)
  end
end
