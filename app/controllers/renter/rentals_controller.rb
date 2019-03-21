class Renter::RentalsController < ApplicationController
  def accept
    @rental = Rental.find(params[:id])
    @rental.status = 'accepted'

    if @rental.save
      redirect_to renter_dashboard_path
    end
  end

  def deny
    @rental = Rental.find(params[:id])
    @rental.status = 'denied'

    if @rental.save
      redirect_to renter_dashboard_path
    end
  end
end
