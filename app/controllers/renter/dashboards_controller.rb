class Renter::DashboardsController < ApplicationController
  def show
    # Let's anticipate on next week (with login)
    @current_user = current_user
    @castles = current_user.castles
  end
end
