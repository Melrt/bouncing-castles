class CastlesController < ApplicationController
# TO DO : add before_action
  def index
    @castles = Castle.all
  end

  def show
  end
end
