class Renter::RentalsController < ApplicationController
  def accept
    @rental = Rental.new
    accepted_status = @rental.status
    accepted_status = 'accept'
    redirect_to renter_dashboard_path
    raise
  # #   if accepted_status.save!
  #
  # else
    # render ?
  # end
  end

  def deny
    # @rental = Rental.new
    # accepted_status = @rental.status
    # accepted_status = 'deny'
    # redirect_to renter_dashboard_path
  end

  private

  # def castle_params
  #   params.require(:castle).permit(:name, :available, :nb_players, :description, :photo, :day_price, :address)
  # end
end
