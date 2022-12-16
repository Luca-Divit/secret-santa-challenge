class PartecipantsController < ApplicationController
  def create
    @partecipant = Partecipant.new(partecipant_params)
    if @partecipant.save
      @draw_partecipant = DrawPartecipant.new
      @draw = Draw.find(params[:draw_id])
      @draw_partecipant.partecipant = @partecipant
      @draw_partecipant.draw = @draw
      redirect_to draw_path(@draw)
    else
      render partial: "shared/modal_partecipant", status: :unprocessable_entity, locals: { draw: @draw }
    end
  end

  def show

  end

  private

  def partecipant_params
    params.require(:partecipant).permit(:name)
  end
end
