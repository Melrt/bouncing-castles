class CastlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @castles = Castle.all
  end

  def show
  end
end
