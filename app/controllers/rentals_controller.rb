class RentalsController < ApplicationController
  def index
    @rentals = current_user.rentals
  end

  def new
    @rental = Rental.new
    @castle = Castle.find(params[:castle_id])
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.castle = Castle.find(params[:castle_id])
    @rental.player = current_user
    if @rental.save
      total_price
      redirect_to rentals_path
    else
      render :new
    end
  end

  def total_price
    (@rental.starts_on - @rental.ends_on) * @rental.castle.day_price
  end

  private

  def rental_params
    params.require(:rental).permit(:starts_on, :ends_on, :total_price)
  end
end
