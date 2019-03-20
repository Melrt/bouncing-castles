class RentalsController < ApplicationController
  def new
    @rental = Rental.new
    @castle = Castle.find(params[:castle_id])
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.castle = Castle.find(params[:castle_id])
    @rental.player = current_user
    if @rental.save!
      redirect_to castles_path
    else
      render :new
    end
  end

  private

  def rental_params
    params.require(:rental).permit(:starts_on, :ends_on)
  end
end
