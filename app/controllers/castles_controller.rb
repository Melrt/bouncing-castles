class CastlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_castle, only: [:show]
  def index
    @castles = Castle.all
  end

  def show
  end

  private

  def set_castle
    @castle = Castle.find(params[:id])
  end
end
