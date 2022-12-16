class PartecipantsController < ApplicationController
  def create
    @partecipant = Partecipant.new(partecipant_params)
    @draw = Draw.find(params[:draw_id])
    @partecipant.draw = @draw
    if @partecipant.save
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
