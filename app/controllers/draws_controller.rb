class DrawsController < ApplicationController
  def index
    @user = User.new
    @draw = Draw.new
    @draws = current_user.draws if current_user
  end

  def create
    @draw = Draw.new(draw_params)
    @draw.user = current_user
    if @draw.save
      redirect_to draw_path(@draw)
    else
      render partial: "shared/modal_draw", status: :unprocessable_entity, locals: { draw: @draw }
    end
  end

  def show
    @draw = Draw.find(params[:id])
    @partecipant = Partecipant.new
  end

  private

  def draw_params
    params.require(:draw).permit(:title, :budget, :date)
  end
end
