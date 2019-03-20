class Renter::CastlesController < ApplicationController
  def new
    @current_user = current_user
    @new_castle = Castle.new
  end
end
