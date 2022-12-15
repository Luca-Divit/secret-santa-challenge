class DrawsController < ApplicationController
  def index
    @user = User.new
    @draw = Draw.new
  end
end
