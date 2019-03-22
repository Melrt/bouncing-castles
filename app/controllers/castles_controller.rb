class CastlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_castle, only: [:show]

  def index
    if params[:query].present?
      @castles = Castle.where("address ILIKE ?", "%#{params[:query]}%")
    else
      @castles = Castle.all
    end
  end

  def show
    @rental = Rental.new
  end

  private

  def set_castle
    @castle = Castle.find(params[:id])
  end
end
